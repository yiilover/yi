-- phpMyAdmin SQL Dump
-- version 3.5.0
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 10 月 28 日 20:40
-- 服务器版本: 5.0.27-community-nt
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `ichengyun`
--

-- --------------------------------------------------------

--
-- 表的结构 `qb_admin_menu`
--

CREATE TABLE IF NOT EXISTS `qb_admin_menu` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `name` text NOT NULL,
  `linkurl` varchar(150) NOT NULL default '',
  `color` varchar(15) NOT NULL default '',
  `target` tinyint(1) NOT NULL default '0',
  `list` smallint(4) NOT NULL default '0',
  `groupid` mediumint(5) NOT NULL default '0',
  `iftier` tinyint(1) NOT NULL default '0',
  `ifcompany` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=217 ;

--
-- 转存表中的数据 `qb_admin_menu`
--

INSERT INTO `qb_admin_menu` (`id`, `fid`, `name`, `linkurl`, `color`, `target`, `list`, `groupid`, `iftier`, `ifcompany`) VALUES
(87, 0, '分类信息', '', '', 0, 7, 3, 0, 0),
(144, 0, '参数设置', '', '', 0, 8, 3, 0, 0),
(145, 144, '网站设置', 'index.php?lfj=center&job=config', '', 0, 0, 3, 0, 0),
(146, 144, '分类设置', 'index.php?lfj=module_admin&dirname=f&file=center&job=post', '', 0, 0, 3, 0, 0),
(154, 0, '常用设置', '', '', 0, 6, 3, 0, 0),
(148, 87, '分类信息管理', 'index.php?lfj=module_admin&dirname=f&file=list&job=list', '', 0, 10, 3, 0, 0),
(153, 87, '伪静态设置', 'index.php?lfj=module_admin&dirname=f&file=center&job=html', '', 0, 6, 3, 0, 0),
(216, 87, '生成模板', '/admin/index.php?lfj=module_admin&dirname=f&file=module&job=listsort#fb', '', 0, 0, 3, 0, 0),
(151, 87, '城市地区管理', 'index.php?lfj=module_admin&dirname=f&file=city&job=city', '', 0, 8, 3, 0, 0),
(152, 87, '友情链接管理', 'index.php?lfj=module_admin&dirname=f&file=friendlink&job=list', '', 0, 7, 3, 0, 0),
(155, 154, '备份数据库', 'index.php?lfj=mysql&job=out#beifen', '', 0, 10, 3, 0, 0),
(156, 154, '单页管理', 'index.php?lfj=alonepage&job=list', '', 0, 5, 3, 0, 0),
(157, 154, '整合论坛', 'index.php?lfj=blend&job=set', '', 0, 0, 3, 0, 0),
(188, 0, '基本功能', '', '', 0, 3, -3, 0, 0),
(189, 188, '修改个人资料', 'userinfo.php?job=edit', '', 0, 5, -3, 0, 0),
(159, 0, '基本功能', '', '', 0, 3, -8, 0, 0),
(160, 159, '修改个人资料', 'userinfo.php?job=edit', '', 0, 5, -8, 0, 0),
(161, 159, '站内短消息', 'pm.php?job=list', '', 0, 4, -8, 0, 0),
(162, 159, '积分充值', 'money.php?job=list', '', 0, 3, -8, 0, 0),
(163, 159, '购买会员等级', 'buygroup.php?job=list', '', 0, 2, -8, 0, 0),
(164, 159, '身份验证', 'yz.php?job=email', '', 0, 1, -8, 0, 0),
(165, 159, '积分消费记录', 'moneylog.php?job=list', '', 0, 0, -8, 0, 0),
(166, 0, '插件功能', '', '', 0, 2, -8, 0, 0),
(167, 166, '推广赚积分', 'hack.php?hack=propagandize&job=list', '', 0, 0, -8, 0, 0),
(168, 0, '分类信息', '', '', 0, 1, -8, 0, 0),
(169, 168, '分类信息管理', '/f/member/list.php', '', 0, 1, -8, 0, 0),
(170, 168, '收藏夹', '/f/member/collection.php', '', 0, 0, -8, 0, 0),
(171, 0, '广告系统', '', '', 0, 0, -8, 0, 0),
(172, 171, '购买普通广告', '/a_d/member/norm.php?job=list', '', 0, 0, -8, 0, 0),
(173, 0, '基本功能', '', '', 0, 3, -9, 0, 0),
(174, 173, '修改个人资料', 'userinfo.php?job=edit', '', 0, 5, -9, 0, 0),
(175, 173, '站内短消息', 'pm.php?job=list', '', 0, 4, -9, 0, 0),
(176, 173, '积分充值', 'money.php?job=list', '', 0, 3, -9, 0, 0),
(177, 173, '购买会员等级', 'buygroup.php?job=list', '', 0, 2, -9, 0, 0),
(178, 173, '身份验证', 'yz.php?job=email', '', 0, 1, -9, 0, 0),
(179, 173, '积分消费记录', 'moneylog.php?job=list', '', 0, 0, -9, 0, 0),
(180, 0, '插件功能', '', '', 0, 2, -9, 0, 0),
(181, 180, '推广赚积分', 'hack.php?hack=propagandize&job=list', '', 0, 0, -9, 0, 0),
(182, 0, '分类信息', '', '', 0, 1, -9, 0, 0),
(183, 182, '分类信息管理', '/f/member/list.php', '', 0, 1, -9, 0, 0),
(184, 182, '收藏夹', '/f/member/collection.php', '', 0, 0, -9, 0, 0),
(185, 0, '广告系统', '', '', 0, 0, -9, 0, 0),
(186, 185, '购买普通广告', '/a_d/member/norm.php?job=list', '', 0, 0, -9, 0, 0),
(187, 154, '支付接口', 'index.php?lfj=center&job=olpay', '', 0, 0, 3, 0, 0),
(190, 188, '站内短消息', 'pm.php?job=list', '', 0, 4, -3, 0, 0),
(191, 188, '积分充值', 'money.php?job=list', '', 0, 3, -3, 0, 0),
(192, 188, '购买会员等级', 'buygroup.php?job=list', '', 0, 2, -3, 0, 0),
(193, 188, '身份验证', 'yz.php?job=email', '', 0, 1, -3, 0, 0),
(194, 188, '积分消费记录', 'moneylog.php?job=list', '', 0, 0, -3, 0, 0),
(195, 0, '插件功能', '', '', 0, 2, -3, 0, 0),
(196, 195, '推广赚积分', 'hack.php?hack=propagandize&job=list', '', 0, 0, -3, 0, 0),
(197, 0, '分类信息', '', '', 0, 1, -3, 0, 0),
(198, 197, '分类信息管理', '/f/member/list.php', '', 0, 1, -3, 0, 0),
(199, 197, '收藏夹', '/f/member/collection.php', '', 0, 0, -3, 0, 0),
(200, 0, '广告系统', '', '', 0, 0, -3, 0, 0),
(201, 200, '购买普通广告', '/a_d/member/norm.php?job=list', '', 0, 0, -3, 0, 0),
(202, 0, '基本功能', '', '', 0, 3, -3, 0, 1),
(203, 202, '修改个人资料', 'userinfo.php?job=edit', '', 0, 5, -3, 0, 1),
(204, 202, '站内短消息', 'pm.php?job=list', '', 0, 4, -3, 0, 1),
(205, 202, '积分充值', 'money.php?job=list', '', 0, 3, -3, 0, 1),
(206, 202, '购买会员等级', 'buygroup.php?job=list', '', 0, 2, -3, 0, 1),
(207, 202, '身份验证', 'yz.php?job=email', '', 0, 1, -3, 0, 1),
(208, 202, '积分消费记录', 'moneylog.php?job=list', '', 0, 0, -3, 0, 1),
(209, 0, '插件功能', '', '', 0, 2, -3, 0, 1),
(210, 209, '推广赚积分', 'hack.php?hack=propagandize&job=list', '', 0, 0, -3, 0, 1),
(211, 0, '分类信息', '', '', 0, 1, -3, 0, 1),
(212, 211, '分类信息管理', '/f/member/list.php', '', 0, 1, -3, 0, 1),
(213, 211, '收藏夹', '/f/member/collection.php', '', 0, 0, -3, 0, 1),
(214, 0, '广告系统', '', '', 0, 0, -3, 0, 1),
(215, 214, '购买普通广告', '/a_d/member/norm.php?job=list', '', 0, 0, -3, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `qb_ad_compete_place`
--

CREATE TABLE IF NOT EXISTS `qb_ad_compete_place` (
  `id` mediumint(7) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `isclose` tinyint(1) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `price` mediumint(5) NOT NULL default '0',
  `day` mediumint(4) NOT NULL default '0',
  `adnum` smallint(3) NOT NULL default '0',
  `wordnum` smallint(3) NOT NULL default '0',
  `autoyz` tinyint(1) NOT NULL default '1',
  `demourl` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `qb_ad_compete_place`
--

INSERT INTO `qb_ad_compete_place` (`id`, `name`, `isclose`, `list`, `price`, `day`, `adnum`, `wordnum`, `autoyz`, `demourl`) VALUES
(3, '顶客页竞价广告', 1, 0, 50, 5, 8, 36, 1, ''),
(4, '广告位管理', 0, 0, 1, 11, 1, 40, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `qb_ad_compete_user`
--

CREATE TABLE IF NOT EXISTS `qb_ad_compete_user` (
  `ad_id` mediumint(7) NOT NULL auto_increment,
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `money` mediumint(6) NOT NULL default '0',
  `id` mediumint(7) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '1',
  `adlink` varchar(200) NOT NULL default '',
  `adword` varchar(255) NOT NULL default '',
  `hits` mediumint(7) NOT NULL default '0',
  `color` varchar(20) NOT NULL default '',
  `fonttype` tinyint(1) NOT NULL default '0',
  `city_id` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`ad_id`),
  KEY `id` (`id`,`endtime`,`money`,`yz`,`city_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `qb_ad_compete_user`
--

INSERT INTO `qb_ad_compete_user` (`ad_id`, `uid`, `username`, `begintime`, `endtime`, `money`, `id`, `yz`, `adlink`, `adword`, `hits`, `color`, `fonttype`, `city_id`) VALUES
(11, 1, 'admin', 1239277578, 1239709578, 50, 3, 1, 'http://www.php168.com/', 'P8官方站', 0, '', 0, 0),
(12, 1, 'admin', 1239279810, 1239711810, 50, 3, 1, 'http://www.php168.com/bbs', 'P8官方论坛', 0, '', 0, 0),
(13, 1, 'admin', 1375326665, 1375758665, 50, 3, 1, 'http://www.waicong.com', '歪聪网', 0, '', 0, 0),
(14, 1, 'admin', 1375327402, 1376277802, 1, 4, 1, 'http://www.waicong.com', '歪聪网', 0, '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_ad_config`
--

CREATE TABLE IF NOT EXISTS `qb_ad_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `qb_ad_config`
--

INSERT INTO `qb_ad_config` (`c_key`, `c_value`, `c_descrip`) VALUES
('module_pre', 'ad_', ''),
('Info_webOpen', '1', ''),
('module_close', '0', ''),
('module_id', '2', ''),
('Info_webname', '广告系统', '');

-- --------------------------------------------------------

--
-- 表的结构 `qb_ad_norm_place`
--

CREATE TABLE IF NOT EXISTS `qb_ad_norm_place` (
  `id` mediumint(7) NOT NULL auto_increment,
  `keywords` varchar(50) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `type` varchar(30) NOT NULL default '0',
  `isclose` tinyint(1) NOT NULL default '0',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `adcode` text NOT NULL,
  `posttime` int(10) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `hits` mediumint(7) NOT NULL default '0',
  `money` mediumint(6) NOT NULL default '0',
  `moneycard` mediumint(6) NOT NULL default '0',
  `ifsale` tinyint(1) NOT NULL default '0',
  `autoyz` tinyint(1) NOT NULL default '0',
  `demourl` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `qb_ad_norm_place`
--

INSERT INTO `qb_ad_norm_place` (`id`, `keywords`, `name`, `type`, `isclose`, `begintime`, `endtime`, `adcode`, `posttime`, `list`, `uid`, `hits`, `money`, `moneycard`, `ifsale`, `autoyz`, `demourl`) VALUES
(38, 'AD_8975', '详细页广告位A2 300x250', 'pic', 0, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:29:"ad/1_20140425160440_xta25.png";s:7:"linkurl";s:24:"http://bxmps.taobao.com/";s:8:"flashurl";s:0:"";s:4:"code";s:8:"\r\n\r\n\r\n\r\n";s:5:"width";s:3:"300";s:6:"height";s:3:"250";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 3, 0, 0, 0, 1, ''),
(37, 'AD_5487', '首页对联广告', 'duilian', 0, 0, 0, 'a:13:{s:4:"word";s:0:"";s:6:"picurl";s:0:"";s:7:"linkurl";s:0:"";s:8:"flashurl";s:0:"";s:4:"code";s:0:"";s:5:"l_src";s:29:"ad/1_20140818010859_uy9bc.png";s:6:"l_link";s:0:"";s:7:"l_width";s:2:"80";s:8:"l_height";s:3:"180";s:5:"r_src";s:29:"ad/1_20140818010859_uy9bc.png";s:6:"r_link";s:0:"";s:7:"r_width";s:2:"80";s:8:"r_height";s:3:"180";}', 0, 0, 0, 2, 0, 0, 0, 1, ''),
(35, 'AD_1991', '详细页广告位B1 660X100', 'pic', 0, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:29:"ad/1_20140425160440_xta25.png";s:7:"linkurl";s:24:"http://bxmps.taobao.com/";s:8:"flashurl";s:0:"";s:4:"code";s:32:"\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n";s:5:"width";s:3:"660";s:6:"height";s:3:"100";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 0, 0, 0, 0, 1, ''),
(36, 'AD_2725', '详细页广告位A1 300x250', 'pic', 0, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:29:"ad/1_20140425160440_xta25.png";s:7:"linkurl";s:24:"http://bxmps.taobao.com/";s:8:"flashurl";s:0:"";s:4:"code";s:8:"\r\n\r\n\r\n\r\n";s:5:"width";s:3:"300";s:6:"height";s:3:"250";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 1, 0, 1, 0, 0, ''),
(34, 'AD_8800', '分类栏目广告位B2', 'pic', 0, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:29:"ad/1_20140424000428_b5itb.png";s:7:"linkurl";s:24:"http://bxmps.taobao.com/";s:8:"flashurl";s:0:"";s:4:"code";s:8:"\r\n\r\n\r\n\r\n";s:5:"width";s:3:"160";s:6:"height";s:3:"600";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 2, 0, 0, 0, 1, ''),
(31, 'AD_7993', '广告位首页A1', 'pic', 0, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:29:"ad/1_20140504160547_ocr0a.gif";s:7:"linkurl";s:23:"http://bxmps.taobao.com";s:8:"flashurl";s:0:"";s:4:"code";s:8:"\r\n\r\n\r\n\r\n";s:5:"width";s:3:"224";s:6:"height";s:2:"70";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 0, 0, 0, 0, 1, ''),
(32, 'AD_8228', '广告位首页A2', 'pic', 0, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:29:"ad/1_20140423150426_xkour.png";s:7:"linkurl";s:0:"";s:8:"flashurl";s:0:"";s:4:"code";s:0:"";s:5:"width";s:3:"980";s:6:"height";s:2:"90";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 0, 0, 0, 0, 1, ''),
(33, 'AD_5437', '分类栏目广告位B1', 'pic', 0, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:29:"ad/1_20140424000408_hca4q.png";s:7:"linkurl";s:24:"http://bxmps.taobao.com/";s:8:"flashurl";s:0:"";s:4:"code";s:16:"\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n";s:5:"width";s:3:"780";s:6:"height";s:2:"60";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 0, 0, 0, 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `qb_ad_norm_user`
--

CREATE TABLE IF NOT EXISTS `qb_ad_norm_user` (
  `u_id` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `u_uid` mediumint(7) NOT NULL default '0',
  `u_username` varchar(30) NOT NULL default '',
  `u_day` smallint(4) NOT NULL default '0',
  `u_begintime` int(10) NOT NULL default '0',
  `u_endtime` int(10) NOT NULL default '0',
  `u_hits` mediumint(7) NOT NULL default '0',
  `u_yz` tinyint(1) NOT NULL default '0',
  `u_code` text NOT NULL,
  `u_money` mediumint(7) NOT NULL default '0',
  `u_moneycard` mediumint(7) NOT NULL default '0',
  `u_posttime` int(10) NOT NULL default '0',
  `city_id` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`u_id`),
  KEY `u_endtime` (`u_endtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_alonepage`
--

CREATE TABLE IF NOT EXISTS `qb_alonepage` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `title` varchar(100) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `style` varchar(15) NOT NULL default '',
  `tpl_head` varchar(50) NOT NULL default '',
  `tpl_main` varchar(50) NOT NULL default '',
  `tpl_foot` varchar(50) NOT NULL default '',
  `filename` varchar(100) default NULL,
  `filepath` varchar(30) NOT NULL default '',
  `descrip` text NOT NULL,
  `keywords` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `hits` int(7) NOT NULL default '0',
  `ishtml` tinyint(1) NOT NULL default '0',
  `city_id` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `city_id` (`city_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `qb_alonepage`
--

INSERT INTO `qb_alonepage` (`id`, `fid`, `name`, `title`, `posttime`, `uid`, `username`, `style`, `tpl_head`, `tpl_main`, `tpl_foot`, `filename`, `filepath`, `descrip`, `keywords`, `content`, `hits`, `ishtml`, `city_id`) VALUES
(1, 0, '招聘', '招聘', 1375511821, 0, '', '', '', '', '', 'about/zhaopin.html', '', '', '', '<h1 style="PADDING-BOTTOM: 0px; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; MARGIN: 0px 0px 6px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT: 400 22px/30px ''Microsoft YaHei'', simsun; WHITE-SPACE: normal; ORPHANS: 2; LETTER-SPACING: normal; COLOR: rgb(0,0,0); WORD-SPACING: 0px; PADDING-TOP: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">网站编辑</h1>\r\n<div style="BORDER-BOTTOM: rgb(208,208,208) 1px solid; PADDING-BOTTOM: 0px; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; MARGIN: 0px 0px 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT: 14px simsun; WHITE-SPACE: normal; ORPHANS: 2; LETTER-SPACING: normal; HEIGHT: 61px; COLOR: rgb(0,0,0); WORD-SPACING: 0px; PADDING-TOP: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" class=terminalpage-job><span style="LINE-HEIGHT: 35px; MARGIN-TOP: 24px; FLOAT: left; FONT-SIZE: 16px; FONT-WEIGHT: bold" class=title-name>职位描述</span><span></span></div>\r\n<div style="PADDING-BOTTOM: 0px; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; MARGIN: 0px 0px 10px; PADDING-LEFT: 0px; WIDTH: 650px; PADDING-RIGHT: 0px; FONT: 14px/25px simsun; WHITE-SPACE: normal; ORPHANS: 2; LETTER-SPACING: normal; COLOR: rgb(0,0,0); WORD-SPACING: 0px; PADDING-TOP: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" class=terminalpage-content>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: 宋体; FONT-SIZE: 12px; PADDING-TOP: 0px">岗位职责：</div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">1、负责分配的网站各栏目内容及特殊位置的每日更新；</span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">2、搜集、整理及制作网站收费资讯内容；</span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">3、增加、更新、合理利用内容来源渠道；</span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">4、协助完成安排的杂志部分内容，参与、完成网站专题策划、组稿；</span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">5、对网站内容方向、页面设计等提出建议；</span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">6、完成指定的采访、撰稿任务；</span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">7、上级安排的其他工作。</span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px"><br /></span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">任职资格：</span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">1、大专及以上学历，中文、新闻、光电技术类相关专业；</span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">2、一年以上工作经验，具备行业基本知识、行业资讯价值判断；</span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">3、具备基本新闻写作与文字编辑技能；熟练掌握使用办公软件，自如使用photoshop及coredraw软件；较强的沟通采访能力；具备网络专题的策划、组织和实施能力；</span></font></div>\r\n<div style="PADDING-BOTTOM: 0px; MARGIN: 0px; MIN-HEIGHT: 16px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px"><font face=宋体><span style="FONT-SIZE: 12px">4、欢迎专业对口、且有意向在此行业长期发展的应届生投递简历。</span></font></div></div>', 68, 0, 0),
(2, 0, '关于我们', '关于我们', 1375512135, 0, '', 'baixing', '', 'template/baixing/alonepage.htm', '', 'about/about.html', '', '', '', '<p>分类信息网（<a href="http://www.5162.com/" target=_blank><font size=2>bbs.zhunrong.com</font></a>）是中国综合的分类信息门户网站之一，涵盖租房，二手房交易，找工作，求职，买东西，卖东西，交友，生活服务等生活各方面。自成立以来，我们一直致力于做好本地生活的向导，并且就不断为实现这个目标而努力。作为生活服务行业的领先网站，中国分类信息网不仅为个人用户提供了各种免费资源，免费信息，免费的信息发布平台，能让用户获得快捷信息服务。同时作为最专业的本地信息服务运营商，中国分类信息网可以为我们的合作伙伴提供：最准确的目标消费用户群体、最直接的产品与服务展示平台、最有效的市场营销效果以及客户关系管理等多方面、多层次的服务。</p>\r\n<p>您可以进入中国分类信息网首页进行分地区、分类别浏览，也可以按照关键词搜索您要找的信息。在这里，您能直接与信息提供者取得联系。您也可将分类广告发布到<a href="http://www.5162.com/"></a>中国分类信息网，当网民检索或者通过分类目录进行浏览时即可看到您的广告。您可以留下电话、Email、QQ以及其他联系信息，这样，对您所发布的信息感兴趣的人就可以在第一时间找到您。</p>', 34, 0, 0),
(3, 0, '电话被冒用', '电话被冒用', 1375511943, 0, '', '', '', '', '', 'about/tel.html', '', '', '', '<p>电话被冒用怎么办？ </p>\r\n<p>-------------------------------------------------------------------------------- </p>\r\n<p>本站的信息均为网友自行发布，有时候因为某种原因，您的联系方式被冒用，造成了对您生活的干扰。请立即与本站联系，经核实后如属实，本站立即对冒用信息进行删除。 </p>\r\n<p>1、如果是手机号被冒用，可以直接用该手机号与本站客服电话联系，说明所冒用的信息编号或内容，本站第一时间给予删除；或者您可以用被冒用的手机号，编辑短信“MY+信息编号”发到本站的客服手机上，本站即可进行删除操作。 </p>\r\n<p>2、如果是固定电话被冒用，您只有用该部被冒用的电话直接和本站客服联系了。 </p>\r\n<p>3、如果是QQ号被冒用，请用该QQ号与本站联系。 本站郑重声明，不论出于何种目的，请网友杜绝各种冒用他人联系方式的恶搞行为，这不仅是道德问题，严重的将触犯法律。 </p>', 24, 0, 0),
(4, 0, '商家推广', '商家推广', 1375511541, 0, '', '', '', '', '', 'about/tuiguang.html', '', '', '', '<p>在本站上您可以发布信息，用于出售您的二手物品、租房、购房、买卖二手车、招聘职员、找工作等等。那么在本站上如何有效推广您的信息呢？<br />你可以通过 置顶 、刷新、付费发布 来推广您的信息。</p>\r\n<p>置顶服务<br />让您的信息位于信息列表页最上方的"置顶区域"，效果大约是正常信息的5倍。</p>\r\n<p>常见问题<br />置顶有什么好处？ <br />置顶始终排在列表页最上方的置顶区域。用户在浏览该类目时会首先看到您的信息，极大提升您信息的效果。（数据表明，置顶信息的效果大约是普通信息的5倍）。</p>\r\n<p>如何购买置顶？ <br />第一步：请先发布一条信息。<br />第二步：购买。有两种方法：<br />1) 进入「我的本站」，选择一条您想置顶的信息，点选「购买置顶」，选择购买天数并完成付费流程。<br />2) 进入信息显示页面，点击「购买置顶」选项，选择购买天数并完成付费流程。<br />第三步：支付成功，信息自动置顶。 </p>\r\n<p>置顶区域的信息如何排序？ <br />置顶区域内，信息以发布或刷新的时间为准，越新的信息排在越前面。</p>\r\n<p>付费问题 <br />置顶的价格是多少？ <br />置顶信息的价格是根据市场供求波动的，以支付时页面上实时显示的价格为准。</p>\r\n<p>置顶有哪些支付方式？ <br />先充值到本站账户，再使用账户余额消费。点此充值 <br />充值的方式包括：支付宝、网上银行、财付通、银联在线支付、邮政汇款、银行汇款、快递上门收款、手机充值卡。</p>\r\n<p>置顶可以退费么？ <br />很抱歉，一旦购买置顶服务后，不接受退费。</p>\r\n<p>如果我的置顶信息被删除了，会退费么？ <br />不会。置顶一旦付费后，不提供退费服务。<br />如果您自行删除您的信息，或因为您的信息内容违反《本站公约》而被删除，本站不提供退费。</p>\r\n<p>操作问题 <br />置顶信息可以修改么？ <br />除城市和类目外，其他内容可以修改，修改后不会影响您的信息在置顶区域的位置。</p>\r\n<p>我要如何知道已经成功购买置顶？ <br />当您的页面出现 「置顶付费成功！」即表示您已完成置顶的购买流程。<br />您可以进入置顶信息所在类目的置顶区域查看。</p>\r\n<p>我的信息发布在某个类目，想置顶到其他类目，可以吗？ <br />不可以。您只能在信息所在的类目购买置顶。</p>\r\n<p>付费刷新<br />相当于重新发布一条信息。刷新后信息发布时间更新为最新时间，信息会重新往前排。</p>\r\n<p>常见问题<br />刷新有什么好处? <br />刷新可以将信息发布时间更新为最新时间，并将信息往前排，被更多人看到。<br />在本站上信息有60天的有效期，刷新之后，有效期会从刷新那刻开始重新计算。<br />举例：如果这条信息已被百度收录而您又想保留，则可以通过刷新来延长有效期。</p>\r\n<p>我可以免费刷新几次？ <br />在本站上，一个城市下，每个二级类目在每个自然月有免费刷新的额度，超过免费额度需要付费。<br />物品交易类目中，免费刷新额度为10次；<br />除物品交易类目外，免费刷新额度为2次。</p>\r\n<p>如何购买刷新？ <br />第一步：请先发布一条信息。<br />第二步：购买。有两种方法：<br />1) 进入「我的本站」，选择一条您想刷新的信息点选刷新，选择刷新次数，点击「确认支付」并付费。<br />2) 在您的信息页面，点击刷新选项，选择刷新次数，点击「确认支付」并付费。<br />第三步：支付成功，信息自动刷新。 </p>\r\n<p>刷新和置顶有何不同？ <br />置顶信息和普通信息都可以被刷新，但普通信息永远位于置顶区域的下方。所以，置顶信息刷新后会在置顶区域往前排；普通信息刷新后只能在普通区域里往前排。</p>\r\n<p>付费问题 <br />刷新的价格是多少？ <br />刷新的价格根据市场供求来定价，它是波动的。原则上，购买的人越多价格会上涨，购买的人越少，价格会下跌。</p>\r\n<p>刷新有哪些支付方式？ <br />先充值到本站账户，再使用账户余额消费。点此充值 <br />充值的方式包括：支付宝、网上银行、财付通、银联在线支付、邮政汇款、银行汇款、快递上门收款、手机充值卡。 </p>\r\n<p>购买刷新后，我可以要求退费吗？ <br />不可以。刷新一旦付费后，不提供退费服务。</p>\r\n<p>如果我刷新的信息被删除了，会退费吗？ <br />不可以。如果您自行删除您的信息，或因为您的信息内容违反《本站公约》而被删除，本站不提供退费。 </p>\r\n<p>操作问题 <br />刷新会让我的信息出现在最上端多久呢？ <br />本站信息排序的规则：信息以发布或刷新的时间为准，越新的信息排在越前面。只要该类目有任何新信息发布/刷新，您的信息即会按序往下顺移。 </p>\r\n<p>我要如何知道是否已经成功购买刷新？ <br />当您的页面出现 「付费刷新成功！」即表示您已完成刷新的购买流程。 </p>\r\n<p>付费发布<br />免费发布信息条数不够用？ 使用付费发布，发布更多信息。 </p>\r\n<p>常见问题<br />我可以免费发布几条信息? <br />在本站上，一个城市下，每个二级类目在每个自然月有免费发布的额度，超过免费额度需要付费。<br />物品交易类目中，免费发布额度为10次；<br />除物品交易类目外，免费发布额度为2次。</p>\r\n<p>发布信息后的有效期是多久？ <br />在本站，每条信息发布后的有效期是60天。您可以通过刷新来延长有效期，刷新后信息从刷新那刻开始计算60天的有效期。</p>\r\n<p>我能在多个城市发布信息么？ <br />本站是本地的分类信息网站，仅对在一个城市发布信息提供免费的额度。如果您需要在多个城市发布信息，您可以通过付费发布来实现。</p>\r\n<p>如何购买付费发布？ <br />系统默认先使用免费额度，当免费额度用完了后，而您又需要发更多的信息，那么就可以使用付费发布。<br />点击「免费发布信息」，选择类目后，系统会跳出"您本月的免费发布额度已经用完。如果您要发布新的信息，您可以下个月再发布。想马上发布，需支付***元/条。"的提示，点击"确认付费发布"后就可以填写信息内容，并且发布。 如有您的账户有余额，系统会直接在余额中扣；如果没有余额，那么可以采用其他支付方式来进行购买。付费成功后，信息即发布。 </p>\r\n<p>付费问题 <br />付费发布的价格是多少？ <br />付费发布的价格根据市场供求来定价，它是波动的。原则上，购买的人越多价格会上涨，购买的人越少，价格会下跌。</p>\r\n<p>付费发布有哪些支付方式？ <br />先充值到本站账户，再使用账户余额消费。点此充值 <br />充值的方式包括：支付宝、网上银行、财付通、银联在线支付、邮政汇款、银行汇款、快递上门收款、手机充值卡。 </p>\r\n<p>购买付费发布后，我可以要求退费吗？ <br />不可以。付费发布一旦付费后，不提供退费服务。</p>\r\n<p>如果我付费发布的信息被删除了，会退费吗？ <br />不可以。如果您自行删除您的信息，或因为您的信息内容违反《本站公约》而被删除，本站不提供退费。</p>\r\n<p>操作问题<br />我要如何知道是否已经完成付费发布的购买流程？ <br />当您的页面出现 「付费发布成功！」即表示您已完成付费发布的购买流程。</p>\r\n<p>如果我修改我的信息内容，会影响到付费发布的使用吗？ <br />不会。付费发布后，信息已经发布，修改内容不影响付费发布的使用。但类目和城市无法修改。<br /></p>', 24, 0, 0),
(5, 0, '联系我们', '联系我们', 1375512027, 0, '', '', '', '', '', 'about/lianxi.html', '', '', '', '<p>联系我们</p>\r\n<p>地址：</p>\r\n<p>电话：</p>\r\n<p>QQ：</p>\r\n<p>网址：<a href="http://bbs.zhunrong.com/">http://bbs.zhunrong.com/</a></p>', 8, 0, 0),
(6, 0, '网站公约', '网站公约', 1375512302, 0, '', '', '', '', '', 'about/gongyue.html', '', '', '', '<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp; 基本原则</p>\r\n<p>&nbsp;&nbsp;&nbsp; 本站是本地的。请仅在一个城市发布信息，如果你的信息需要出现在多个城市，本站可能不适合你。<br />&nbsp;&nbsp;&nbsp; 本站是分类的。一个信息请只发布在一个最相关的类目。请不要重复发布相同信息。<br />&nbsp;&nbsp;&nbsp; 本站是为见面交易设计的。卖家发信息，留电话，见面交易；买家看信息，打电话，见面交易。非见面交易在本站上有巨大风险，请避免。<br />&nbsp;&nbsp;&nbsp; 本站是公平的。我们限制每个人每个类目的发帖数量，我们相信这个限制对绝大多数用户是足够的。请不要注册多个帐户发布信息，不允许用机器发布。<br />&nbsp;&nbsp;&nbsp; 本站的信息是新鲜的。所有信息按照发布时间排序，发布60天后删除。我们相信越新鲜的信息越有价值。<br />&nbsp;&nbsp;&nbsp; 本站的信息是用户发布的。象现实社会一样，难免有骗子，请提高警惕，只相信见面交易，发现骗子立刻举报。<br />&nbsp;&nbsp;&nbsp; 本站的付费产品是市场定价的。为了保证效果，我们严格限制每个类目付费服务的数量。买的人少就便宜，买的人多就贵，本站不参与定价。<br />&nbsp;&nbsp;&nbsp; 本站是为大多数人服务的。为了服务大多数用户，大多数城市和大多数类目，我们不提供只服务少数用户的功能，以保证我们有限的资源可以服务更多的用户。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 执行细则</p>\r\n<p>&nbsp;&nbsp;&nbsp; 城市发布超限<br />&nbsp;&nbsp;&nbsp; 本站是本地的，请仅在一个城市发布信息，超过城市发布限制时需要付费才能发布。<br />&nbsp;&nbsp;&nbsp; 类目发布超限<br />&nbsp;&nbsp;&nbsp; 本站对每个人是公平的，为了避免一个人占用太多版面，超过类目发布限制时需要付费才能发布。<br />&nbsp;&nbsp;&nbsp; 多账户手机验证<br />&nbsp;&nbsp;&nbsp; 本站对每个人是公平的，为了避免一个人注册多账户发布信息，发现注册账户大于1个时需要通过手机验证才能发布。<br />&nbsp;&nbsp;&nbsp; 多账户答题验证<br />&nbsp;&nbsp;&nbsp; 本站对每个人是公平的，为了避免一个人注册多账户发布信息，发现注册账户大于4个时需要通过答题验证才能发布。<br />&nbsp;&nbsp;&nbsp; 多账户支付宝验证<br />&nbsp;&nbsp;&nbsp; 本站对每个人是公平的，为了避免一个人注册多账户发布信息，发现注册账户大于6个时需要通过支付宝验证才能发布。<br />&nbsp;&nbsp;&nbsp; 借助工具发帖<br />&nbsp;&nbsp;&nbsp; 本站对每个人是公平的，非亲自、手动的在本站平台上发布的信息会被删除。<br />&nbsp;&nbsp;&nbsp; 账户安全验证<br />&nbsp;&nbsp;&nbsp; 本站不允许发布含有他人联系方式的信息，未验证的账户发布其他联系方式时需要验证手机后才能发布。<br />&nbsp;&nbsp;&nbsp; 号码冒用信息<br />&nbsp;&nbsp;&nbsp; 本站不允许发布含有他人联系方式的信息，信息经联系方式持有者确认为冒用时会被删除，且账户会被永久冻结。<br />&nbsp;&nbsp;&nbsp; 高危类目手机验证<br />&nbsp;&nbsp;&nbsp; 为了营造真实有效的类目环境，女找男、征婚、ktv/酒吧类目需要验证手机才能发布。<br />&nbsp;&nbsp;&nbsp; 重复信息<br />&nbsp;&nbsp;&nbsp; 本站上的信息是新鲜的，标题、描述或包含的图片任一相同时信息会被删除，请为信息定制不同的标题、描述和图片。<br />&nbsp;&nbsp;&nbsp; 错类信息<br />&nbsp;&nbsp;&nbsp; 本站上的信息是分类的，错类信息会被删除，请将信息发布到单个最相关的类目。<br />&nbsp;&nbsp;&nbsp; 违法信息<br />&nbsp;&nbsp;&nbsp; 本站不允许发布违反国家法律法规的信息，信息涉及违反《刑法》规定的内容时会被删除，且账户会被永久冻结。<br />&nbsp;&nbsp;&nbsp; 违禁信息<br />&nbsp;&nbsp;&nbsp; 本站不允许发布违反国家法律法规的信息，信息涉及违反《互联网违禁信息》规定的内容时会被删除。<br />&nbsp;&nbsp;&nbsp; 低俗信息<br />&nbsp;&nbsp;&nbsp; 本站不允许发布违反国家法律法规的信息，信息涉及违反《整治互联网低俗之风专项行动》规定的内容时会被删除。<br />&nbsp;&nbsp;&nbsp; 冒充个人信息<br />&nbsp;&nbsp;&nbsp; 冒充个人信息是有违诚信原则的，请如实描述信息；一旦发现冒充"个人"发帖，意图增加点击率的行为，信息会被删除。<br />&nbsp;&nbsp;&nbsp; 欺诈信息<br />&nbsp;&nbsp;&nbsp; 欺诈信息是有违诚信原则的，请如实描述信息；一旦发现故意捏造事实，意图从对方的损失中获益的行为，信息会被删除且账户会被永久冻结。<br />&nbsp;&nbsp;&nbsp; 多次违反版规<br />&nbsp;&nbsp;&nbsp; 多次发布违反《本站公约》信息的账户会被暂时冻结5天，冻结后发布的信息会被删除。<br />&nbsp;&nbsp;&nbsp; 严重违反版规<br />&nbsp;&nbsp;&nbsp; 曾经发布过欺诈、违法或号码冒用信息的账户、电脑和联系方式都会被永久冻结，冻结后发布的信息会被删除。<br />&nbsp;&nbsp;&nbsp; 故意躲避审查规则<br />&nbsp;&nbsp;&nbsp; 本站是公平的，一旦发现躲避审查、多发霸屏的行为，信息将被删除。</p>\r\n<p>&nbsp;</p>', 16, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_area`
--

CREATE TABLE IF NOT EXISTS `qb_area` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` text NOT NULL,
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=538 ;

--
-- 转存表中的数据 `qb_area`
--

INSERT INTO `qb_area` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`) VALUES
(1, 0, '北京市', 1, 18, 0, '', 0, 0, '', '', '', '', 'N;', '', 0, '', '', 0, '', '', '', '', 0, 'b:0;'),
(2, 0, '上海市', 1, 19, 0, '', 0, 0, '', '', '', '', 'N;', '', 0, '', '', 0, '', '', '', '', 0, 'b:0;'),
(3, 0, '天津市', 1, 18, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(4, 0, '重庆市', 1, 40, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(5, 0, '河北省', 1, 11, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(6, 0, '山西省', 1, 11, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(7, 0, '内蒙古自治区', 1, 12, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(8, 0, '辽宁省', 1, 14, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(9, 0, '吉林省', 1, 9, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(10, 0, '黑龙江省', 1, 13, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(11, 0, '江苏省', 1, 13, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(12, 0, '浙江省', 1, 11, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(13, 0, '安徽省', 1, 17, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(14, 0, '福建省', 1, 9, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(15, 0, '江西省', 1, 11, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(16, 0, '山东省', 1, 17, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(17, 0, '河南省', 1, 17, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(18, 0, '湖北省', 1, 17, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(19, 0, '湖南省', 1, 14, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(20, 0, '广东省', 1, 21, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(21, 0, '广西壮族自治区', 1, 14, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(22, 0, '海南省', 1, 21, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(23, 0, '四川省', 1, 21, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(24, 0, '贵州省', 1, 9, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(25, 0, '云南省', 1, 16, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(26, 0, '西藏自治区', 1, 7, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(27, 0, '陕西省', 1, 10, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(28, 0, '甘肃省', 1, 14, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(29, 0, '青海省', 1, 8, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(30, 0, '宁夏回族自治区', 1, 5, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(31, 0, '新疆维吾尔自治区', 1, 18, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(32, 0, '台湾省', 1, 25, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(33, 0, '香港特别行政区', 1, 18, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(34, 0, '澳门特别行政区', 1, 5, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(35, 1, '东城区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(36, 1, '西城区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(37, 1, '崇文区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(38, 1, '宣武区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(39, 1, '朝阳区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(40, 1, '丰台区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(41, 1, '石景山区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(42, 1, '海淀区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(43, 1, '门头沟区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(44, 1, '房山区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(45, 1, '通州区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(46, 1, '顺义区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(47, 1, '昌平区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(48, 1, '大兴区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(49, 1, '怀柔区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(50, 1, '平谷区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(51, 1, '密云县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(52, 1, '延庆县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(53, 2, '黄浦区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(54, 2, '卢湾区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(55, 2, '徐汇区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(56, 2, '长宁区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(57, 2, '静安区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(58, 2, '普陀区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(59, 2, '闸北区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(60, 2, '虹口区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(61, 2, '杨浦区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(62, 2, '闵行区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(63, 2, '宝山区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(64, 2, '嘉定区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(65, 2, '浦东新区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(66, 2, '金山区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(67, 2, '松江区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(68, 2, '青浦区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(69, 2, '南汇区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(70, 2, '奉贤区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(71, 2, '崇明县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(72, 3, '和平区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(73, 3, '河东区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(74, 3, '河西区', 2, 0, 0, '', 0, 0, '', '', '', '', 'N;', '', 0, '', '', 0, '', '', '', '', 0, 'b:0;'),
(75, 3, '南开区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(76, 3, '河北区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(77, 3, '红桥区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(78, 3, '塘沽区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(79, 3, '汉沽区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(80, 3, '大港区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(81, 3, '东丽区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(82, 3, '西青区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(83, 3, '津南区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(84, 3, '北辰区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(85, 3, '武清区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(86, 3, '宝坻区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(87, 3, '宁河县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(88, 3, '静海县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(89, 3, '蓟县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(90, 4, '万州区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(91, 4, '涪陵区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(92, 4, '渝中区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(93, 4, '大渡口区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(94, 4, '江北区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(95, 4, '沙坪坝区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(96, 4, '九龙坡区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(97, 4, '南岸区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(98, 4, '北碚区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(99, 4, '万盛区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(100, 4, '双桥区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(101, 4, '渝北区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(102, 4, '巴南区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(103, 4, '黔江区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(104, 4, '长寿区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(105, 4, '綦江县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(106, 4, '潼南县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(107, 4, '铜梁县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(108, 4, '大足县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(109, 4, '荣昌县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(110, 4, '璧山县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(111, 4, '梁平县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(112, 4, '城口县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(113, 4, '丰都县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(114, 4, '垫江县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(115, 4, '武隆县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(116, 4, '忠县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(117, 4, '开县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(118, 4, '云阳县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(119, 4, '奉节县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(120, 4, '巫山县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(121, 4, '巫溪县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(122, 4, '石柱土家族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(123, 4, '秀山土家族苗族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(124, 4, '酉阳土家族苗族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(125, 4, '彭水苗族土家族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(126, 4, '江津市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(127, 4, '合川市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(128, 4, '永川市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(129, 4, '南川市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(130, 5, '石家庄市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(131, 5, '唐山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(132, 5, '秦皇岛市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(133, 5, '邯郸市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(134, 5, '邢台市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(135, 5, '保定市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(136, 5, '张家口市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(137, 5, '承德市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(138, 5, '沧州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(139, 5, '廊坊市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(140, 5, '衡水市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(141, 6, '太原市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(142, 6, '大同市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(143, 6, '阳泉市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(144, 6, '长治市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(145, 6, '晋城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(146, 6, '朔州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(147, 6, '晋中市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(148, 6, '运城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(149, 6, '忻州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(150, 6, '临汾市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(151, 6, '吕梁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(152, 7, '呼和浩特市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(153, 7, '包头市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(154, 7, '乌海市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(155, 7, '赤峰市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(156, 7, '通辽市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(157, 7, '鄂尔多斯市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(158, 7, '呼伦贝尔市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(159, 7, '巴彦淖尔市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(160, 7, '乌兰察布市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(161, 7, '兴安盟', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(162, 7, '锡林郭勒盟', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(163, 7, '阿拉善盟', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(164, 8, '沈阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(165, 8, '大连市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(166, 8, '鞍山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(167, 8, '抚顺市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(168, 8, '本溪市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(169, 8, '丹东市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(170, 8, '锦州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(171, 8, '营口市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(172, 8, '阜新市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(173, 8, '辽阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(174, 8, '盘锦市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(175, 8, '铁岭市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(176, 8, '朝阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(177, 8, '葫芦岛市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(178, 9, '长春市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(179, 9, '吉林市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(180, 9, '四平市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(181, 9, '辽源市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(182, 9, '通化市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(183, 9, '白山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(184, 9, '松原市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(185, 9, '白城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(186, 9, '延边朝鲜族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(187, 10, '哈尔滨市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(188, 10, '齐齐哈尔市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(189, 10, '鸡西市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(190, 10, '鹤岗市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(191, 10, '双鸭山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(192, 10, '大庆市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(193, 10, '伊春市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(194, 10, '佳木斯市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(195, 10, '七台河市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(196, 10, '牡丹江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(197, 10, '黑河市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(198, 10, '绥化市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(199, 10, '大兴安岭地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(200, 11, '南京市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(201, 11, '无锡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(202, 11, '徐州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(203, 11, '常州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(204, 11, '苏州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(205, 11, '南通市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(206, 11, '连云港市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(207, 11, '淮安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(208, 11, '盐城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(209, 11, '扬州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(210, 11, '镇江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(211, 11, '泰州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(212, 11, '宿迁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(213, 12, '杭州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(214, 12, '宁波市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(215, 12, '温州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(216, 12, '嘉兴市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(217, 12, '湖州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(218, 12, '绍兴市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(219, 12, '金华市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(220, 12, '衢州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(221, 12, '舟山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(222, 12, '台州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(223, 12, '丽水市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(224, 13, '合肥市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(225, 13, '芜湖市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(226, 13, '蚌埠市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(227, 13, '淮南市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(228, 13, '马鞍山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(229, 13, '淮北市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(230, 13, '铜陵市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(231, 13, '安庆市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(232, 13, '黄山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(233, 13, '滁州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(234, 13, '阜阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(235, 13, '宿州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(236, 13, '巢湖市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(237, 13, '六安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(238, 13, '亳州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(239, 13, '池州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(240, 13, '宣城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(241, 14, '福州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(242, 14, '厦门市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(243, 14, '莆田市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(244, 14, '三明市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(245, 14, '泉州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(246, 14, '漳州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(247, 14, '南平市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(248, 14, '龙岩市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(249, 14, '宁德市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(250, 15, '南昌市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(251, 15, '景德镇市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(252, 15, '萍乡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(253, 15, '九江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(254, 15, '新余市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(255, 15, '鹰潭市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(256, 15, '赣州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(257, 15, '吉安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(258, 15, '宜春市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(259, 15, '抚州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(260, 15, '上饶市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(261, 16, '济南市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(262, 16, '青岛市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(263, 16, '淄博市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(264, 16, '枣庄市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(265, 16, '东营市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(266, 16, '烟台市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(267, 16, '潍坊市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(268, 16, '济宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(269, 16, '泰安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(270, 16, '威海市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(271, 16, '日照市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(272, 16, '莱芜市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(273, 16, '临沂市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(274, 16, '德州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(275, 16, '聊城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(276, 16, '滨州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(277, 16, '荷泽市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(278, 17, '郑州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(279, 17, '开封市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(280, 17, '洛阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(281, 17, '平顶山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(282, 17, '安阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(283, 17, '鹤壁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(284, 17, '新乡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(285, 17, '焦作市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(286, 17, '濮阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(287, 17, '许昌市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(288, 17, '漯河市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(289, 17, '三门峡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(290, 17, '南阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(291, 17, '商丘市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(292, 17, '信阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(293, 17, '周口市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(294, 17, '驻马店市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(295, 18, '武汉市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(296, 18, '黄石市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(297, 18, '十堰市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(298, 18, '宜昌市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(299, 18, '襄樊市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(300, 18, '鄂州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(301, 18, '荆门市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(302, 18, '孝感市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(303, 18, '荆州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(304, 18, '黄冈市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(305, 18, '咸宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(306, 18, '随州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(307, 18, '恩施土家族苗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(308, 18, '仙桃市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(309, 18, '潜江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(310, 18, '天门市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(311, 18, '神农架林区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(312, 19, '长沙市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(313, 19, '株洲市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(314, 19, '湘潭市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(315, 19, '衡阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(316, 19, '邵阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(317, 19, '岳阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(318, 19, '常德市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(319, 19, '张家界市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(320, 19, '益阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(321, 19, '郴州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(322, 19, '永州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(323, 19, '怀化市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(324, 19, '娄底市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(325, 19, '湘西土家族苗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(326, 20, '广州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(327, 20, '韶关市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(328, 20, '深圳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(329, 20, '珠海市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(330, 20, '汕头市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(331, 20, '佛山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(332, 20, '江门市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(333, 20, '湛江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(334, 20, '茂名市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(335, 20, '肇庆市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(336, 20, '惠州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(337, 20, '梅州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(338, 20, '汕尾市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(339, 20, '河源市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(340, 20, '阳江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(341, 20, '清远市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(342, 20, '东莞市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(343, 20, '中山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(344, 20, '潮州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(345, 20, '揭阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(346, 20, '云浮市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(347, 21, '南宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(348, 21, '柳州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(349, 21, '桂林市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(350, 21, '梧州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(351, 21, '北海市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(352, 21, '防城港市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(353, 21, '钦州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(354, 21, '贵港市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(355, 21, '玉林市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(356, 21, '百色市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(357, 21, '贺州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(358, 21, '河池市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(359, 21, '来宾市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(360, 21, '崇左市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(361, 22, '海口市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(362, 22, '三亚市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(363, 22, '五指山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(364, 22, '琼海市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(365, 22, '儋州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(366, 22, '文昌市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(367, 22, '万宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(368, 22, '东方市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(369, 22, '定安县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(370, 22, '屯昌县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(371, 22, '澄迈县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(372, 22, '临高县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(373, 22, '白沙黎族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(374, 22, '昌江黎族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(375, 22, '乐东黎族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(376, 22, '陵水黎族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(377, 22, '保亭黎族苗族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(378, 22, '琼中黎族苗族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(379, 22, '西沙群岛', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(380, 22, '南沙群岛', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(381, 22, '中沙群岛的岛礁及其海域', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(382, 23, '成都市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(383, 23, '自贡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(384, 23, '攀枝花市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(385, 23, '泸州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(386, 23, '德阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(387, 23, '绵阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(388, 23, '广元市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(389, 23, '遂宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(390, 23, '内江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(391, 23, '乐山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(392, 23, '南充市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(393, 23, '眉山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(394, 23, '宜宾市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(395, 23, '广安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(396, 23, '达州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(397, 23, '雅安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(398, 23, '巴中市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(399, 23, '资阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(400, 23, '阿坝藏族羌族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(401, 23, '甘孜藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(402, 23, '凉山彝族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(403, 24, '贵阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(404, 24, '六盘水市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(405, 24, '遵义市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(406, 24, '安顺市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(407, 24, '铜仁地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(408, 24, '黔西南布依族苗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(409, 24, '毕节地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(410, 24, '黔东南苗族侗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(411, 24, '黔南布依族苗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(412, 25, '昆明市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(413, 25, '曲靖市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(414, 25, '玉溪市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(415, 25, '保山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(416, 25, '昭通市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(417, 25, '丽江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(418, 25, '思茅市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(419, 25, '临沧市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(420, 25, '楚雄彝族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(421, 25, '红河哈尼族彝族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(422, 25, '文山壮族苗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(423, 25, '西双版纳傣族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(424, 25, '大理白族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(425, 25, '德宏傣族景颇族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(426, 25, '怒江傈僳族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(427, 25, '迪庆藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(428, 26, '拉萨市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(429, 26, '昌都地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(430, 26, '山南地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(431, 26, '日喀则地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(432, 26, '那曲地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(433, 26, '阿里地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(434, 26, '林芝地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(435, 27, '西安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(436, 27, '铜川市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(437, 27, '宝鸡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(438, 27, '咸阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(439, 27, '渭南市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(440, 27, '延安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(441, 27, '汉中市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(442, 27, '榆林市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(443, 27, '安康市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(444, 27, '商洛市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(445, 28, '兰州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(446, 28, '嘉峪关市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(447, 28, '金昌市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(448, 28, '白银市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(449, 28, '天水市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(450, 28, '武威市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(451, 28, '张掖市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(452, 28, '平凉市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(453, 28, '酒泉市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(454, 28, '庆阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(455, 28, '定西市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(456, 28, '陇南市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(457, 28, '临夏回族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(458, 28, '甘南藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(459, 29, '西宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(460, 29, '海东地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(461, 29, '海北藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(462, 29, '黄南藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(463, 29, '海南藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(464, 29, '果洛藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(465, 29, '玉树藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(466, 29, '海西蒙古族藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(467, 30, '银川市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(468, 30, '石嘴山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(469, 30, '吴忠市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(470, 30, '固原市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(471, 30, '中卫市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(472, 31, '乌鲁木齐市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(473, 31, '克拉玛依市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(474, 31, '吐鲁番地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(475, 31, '哈密地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(476, 31, '昌吉回族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(477, 31, '博尔塔拉蒙古自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(478, 31, '巴音郭楞蒙古自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(479, 31, '阿克苏地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(480, 31, '克孜勒苏柯尔克孜自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '');
INSERT INTO `qb_area` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`) VALUES
(481, 31, '喀什地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(482, 31, '和田地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(483, 31, '伊犁哈萨克自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(484, 31, '塔城地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(485, 31, '阿勒泰地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(486, 31, '石河子市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(487, 31, '阿拉尔市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(488, 31, '图木舒克市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(489, 31, '五家渠市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(490, 32, '台北市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(491, 32, '高雄市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(492, 32, '基隆市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(493, 32, '新竹市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(494, 32, '台中市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(495, 32, '嘉义市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(496, 32, '台南市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(497, 32, '台北县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(498, 32, '桃园县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(499, 32, '新竹县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(500, 32, '苗栗县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(501, 32, '台中县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(502, 32, '彰化县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(503, 32, '南投县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(504, 32, '云林县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(505, 32, '嘉义县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(506, 32, '台南县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(507, 32, '高雄县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(508, 32, '屏东县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(509, 32, '宜兰县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(510, 32, '花莲县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(511, 32, '台东县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(512, 32, '澎湖县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(513, 32, '金门县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(514, 32, '连江县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(515, 33, '中西区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(516, 33, '东区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(517, 33, '南区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(518, 33, '湾仔区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(519, 33, '九龙城区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(520, 33, '观塘区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(521, 33, '深水埗区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(522, 33, '黄大仙区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(523, 33, '油尖旺区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(524, 33, '离岛区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(525, 33, '葵青区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(526, 33, '北区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(527, 33, '西贡区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(528, 33, '沙田区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(529, 33, '大埔区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(530, 33, '荃湾区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(531, 33, '屯门区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(532, 33, '元朗区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(533, 34, '澳门市花地玛堂区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(534, 34, '澳门市圣安多尼堂区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(535, 34, '澳门市大堂区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(536, 34, '澳门市望德堂区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
(537, 34, '澳门市风顺堂区', 2, 0, 0, '', 0, 0, '', '', '', '', 'N;', '', 0, '', '', 0, '', '', '', '', 0, 'b:0;');

-- --------------------------------------------------------

--
-- 表的结构 `qb_config`
--

CREATE TABLE IF NOT EXISTS `qb_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `qb_config`
--

INSERT INTO `qb_config` (`c_key`, `c_value`, `c_descrip`) VALUES
('yzImgComment', '0', ''),
('flashtime', '0', ''),
('showComment', '1', ''),
('forbidComment', '0', ''),
('showCommentRows', '8', ''),
('viewNoPassGuestBook', '1', ''),
('yzImgContribute', '0', ''),
('groupPassContribute', '3', ''),
('RegCompany', '0', ''),
('MaxOnlineUser', '1000', ''),
('groupPassShopYz', '3,4', ''),
('groupPassPassGuestBook', '3', ''),
('ifOpenGuestBook', '1', ''),
('yzImgGuestBook', '1', ''),
('ContributeFid', '2', ''),
('groupPassLogYz', '3,4', ''),
('QQ_QBappkey', '005b75f6027b306a5760b07a256996a3', ''),
('FtpPort', '21', ''),
('PostSortStep', '2', ''),
('ListSonline', '2', ''),
('_Notice', '29weSgiaHR0cDovL3d3dy5waHAxNjguY29tL05vdGljZS8/dXJsPSR3ZWJkYlt3d3dfdXJsXSIsUEhQMTY4X1BBVEguImNhY2hlL05vdGljZS5waHAiKTs=', ''),
('CommentTime', '5', ''),
('weburl', '/', ''),
('MailType', 'smtp', ''),
('yeepay_key', 've4ets3huzxruch0tsf6nga7a2lpckm8h9p7qnefj31q49ms8bhl3qin6q0g', ''),
('allowMemberCommentPass', '1', ''),
('AvoidGatherPre', '', ''),
('AvoidCopy', '0', ''),
('AvoidGather', '0', ''),
('AvoidSave', '0', ''),
('if_gdimg', '1', ''),
('adminPostEditType', 'html', ''),
('article_show_step', '0', ''),
('ifContribute', '1', ''),
('allowGuestSearch', '0', ''),
('kill_badword', '0', ''),
('ShowKeywordColor', '#F70968', ''),
('ifShowKeyword', '1', ''),
('UseFtp', '0', ''),
('FtpDir', '111', ''),
('FtpWeb', '', ''),
('FtpPwd', 'admin', ''),
('FtpName', 'admin', ''),
('photoShowType', '0', ''),
('groupTime', '180', ''),
('allowGuestCommentPass', '1', ''),
('ShowMenu', '0', ''),
('GuestBookNum', '8', ''),
('ShopNormalSend', '8', ''),
('ShopEmsSend', '25', ''),
('groupUpType', '1', ''),
('allowDownMv', '0', ''),
('SPlist_filename2', 'listsp.php?fid-{$fid}-page-{$page}.htm', ''),
('HideNopowerPost', '1', ''),
('autoPlayFirstMv', '1', ''),
('allowGuestComment', '1', ''),
('PostNotice', '<font face=SimSun>\r\n<p><font face=SimSun>1、如果是转载内容，请务必填写稿件来源网址及出处。<br />2、所引起的版权纠纷与法律责任由发布者承担。</font></p></font>', ''),
('ListLeng', '70', ''),
('propagandize_LogDay', '5', ''),
('propagandize_Money', '10', ''),
('propagandize_close', '0', ''),
('EditYzMob', '0', ''),
('YZ_EmailMoney', '10', ''),
('EditYzIdcard', '0', ''),
('EditYzEmail', '0', ''),
('MailServer', 'smtp.exmail.qq.com', ''),
('sms_wi_id', '2', ''),
('sms_wi_pwd', '3', ''),
('sms_es_key', '2', ''),
('sms_es_name', '1', ''),
('sms_type', 'winic', ''),
('SPbencandy_filename2', 'showsp.php?fid-{$fid}-id-{$id}-page-{$page}.htm', ''),
('list_filename2', 'list.php?fid-{$fid}-page-{$page}.htm', ''),
('forbidReg', '0', ''),
('close_count', '0', ''),
('Reg_Field', 'a:1:{s:8:"field_db";N;}', ''),
('passport_TogetherLogin', '1', ''),
('Listsortnameline', '2', ''),
('ListSonLeng', '34', ''),
('ListSonRows', '9', ''),
('JsListLeng', '36', ''),
('cache_time_js', '-1', ''),
('SideSortStyle', 'side_sort/2', ''),
('SideTitleStyle', 'side_tpl/2', ''),
('JsListRows', '5', ''),
('SPlist_filename', 'html/4special{$fid}/list{$page}.htm', ''),
('SPbencandy_filename', 'html/5special{$fid}/show{$id}.htm', ''),
('cache_time_com', '-1', ''),
('ArticleHeart', '欠扁|1.gif\r\n支持|2.gif\r\n很棒|3.gif\r\n找骂|4.gif\r\n搞笑|5.gif\r\n软文|6.gif\r\n不解|7.gif\r\n吃惊|8.gif', ''),
('heart_time', '30', ''),
('heart_noRecord', '1', ''),
('ForceDel', '0', ''),
('UseArticleDigg', '0', ''),
('AdInfoListLeng', '40', ''),
('sortNUM', '27', ''),
('FtpHost', '127.0.0.1', ''),
('articleNUM', '77', ''),
('cache_time_like', '-1', ''),
('cache_time_new', '-1', ''),
('passport_path', '../pw7', ''),
('Del_MoreUpfile', '1', ''),
('passport_type', '', ''),
('Info_GuestPostRepeat', '0', ''),
('bokecc_id', '', ''),
('Info_MemberDayPostNum', '20', ''),
('AdInfoIndexShow', '20', ''),
('tenpay_id', '', ''),
('RewriteUrl', '0', ''),
('passport_url', 'http://web8.com/bbs', ''),
('MakeIndexHtmlTime', '0', ''),
('passport_pre', '`dz7`.cdb_', ''),
('cache_time_pic', '-1', ''),
('list_cache_time', '0', ''),
('bencandy_cache_time', '0', ''),
('showsp_cache_time', '0', ''),
('cache_time_hot', '-1', ''),
('pay99_id', '', ''),
('MoneyRatio', '100', ''),
('Money2card', '0', ''),
('index_cache_time', '0', ''),
('DefaultIndexHtml', '0', ''),
('AutoPassCompany', '1', ''),
('YzImg_voice', '1', ''),
('UseArticleHeart', '1', ''),
('AutoTitleNum', '1', ''),
('deleteArticleMoney', '-1', ''),
('postArticleMoney', '1', ''),
('comArticleMoney', '3', ''),
('hotArticleNum', '100', ''),
('newArticleTime', '24', ''),
('ListShowIcon', '0', ''),
('autoGetKeyword', '0', ''),
('autoGetSmallPic', '1', ''),
('autoCutSmallPic', '1', ''),
('ForbidRepeatTitle', '1', ''),
('viewNoPassArticle', '0', ''),
('waterimg', 'images/default/water.gif', ''),
('ArticleDownloadDirTime', '0', ''),
('ArticleDownloadUseFtp', '0', ''),
('XunLei_ID', '08311', ''),
('FlashGet_ID', '6370', ''),
('KeepTodayCount', '1', ''),
('ShopOtherSend', '18', ''),
('ForbidShowPhpPage', '0', ''),
('bencandy_filename2', 'bencandy.php?fid-{$fid}-id-{$id}-page-{$page}.htm', ''),
('alipay_transport', 'https', ''),
('tenpay_key', '', ''),
('yeepay_id', '10000821064', ''),
('pay99_key', '', ''),
('alipay_key', '', ''),
('NewsMakeHtml', '0', ''),
('list_filename', 'html/{$fid}/{$page}.htm', ''),
('bencandy_filename', 'html/{$fid}-{$dirid}/{$id}-{$page}.htm', ''),
('alipay_partner', '', ''),
('MAX_sell_telephone', '10', ''),
('money_sell_telephone', '50', ''),
('sell_telephone_titleNUM', '12', ''),
('sell_telephone_telNUM', '13', ''),
('Info_PostMaxNum', '20', ''),
('Info_TopNum', '5', ''),
('AdInfoShowTime', '100', ''),
('Info_feedbackID', '111111', ''),
('Info_MakeIndexHtmlTime', '0', ''),
('ErrSortMoney', '13', ''),
('Info_DelKeyword', '暴乱\r\n反动', ''),
('Info_PostMaxLeng', '100000', ''),
('Info_RepeatPostNum', '3', ''),
('Info_postCkMob', '0', ''),
('Info_postCkIp', '0', ''),
('DelOtherCommentMoney', '12', ''),
('otherCardMoney', '11', ''),
('permitMoney', '10', ''),
('IDcardMoney', '9', ''),
('EmailYzMoney', '8', ''),
('ReportMoney', '7', ''),
('GoodCommentMoney', '6', ''),
('PublicizeRegMoney', '5', ''),
('ALLInfoMoney', '4', ''),
('Info_loginTime', '16', ''),
('Info_loginMoney', '3', ''),
('Info_regmoney', '1', ''),
('illInfoMoney', '14', ''),
('DelReportMoney', '15', ''),
('Jump_allcity', '0', ''),
('Jump_fromarea', '1', ''),
('Info_TopMoney', '300', ''),
('Info_closeWhy', '网站维护当中,暂停开放', ''),
('sort_layout', '10,9,150,165#2,4#1,5,3#6,7,8#', ''),
('Info_ClosePost', '0', ''),
('Info_weburl', '', ''),
('AdInfoIndexLeng', '', ''),
('Info_ShowSearchContact', '0', ''),
('Info_ForbidMemberViewContact', '0', ''),
('Info_TopDay', '2', ''),
('Info_GuestPostPicNum', '', ''),
('AdInfoBigsortShow', '15', ''),
('InfoIndexCSRow', '', ''),
('Force_Choose_City', '0', ''),
('Info_Searchkeyword', '0', ''),
('InfoIndexLeng', '26', ''),
('InfoIndexRow', '8', ''),
('InfoListRow', '10', ''),
('AdInfoIndexRow', '16', ''),
('Info_guide_word', '', ''),
('module_pre', 'fenlei_', ''),
('module_id', '1', ''),
('Info_style', '', ''),
('Info_metakeywords', '房产 二手 交易 黄页', ''),
('Info_webadmin', '', ''),
('Info_webOpen', '1', ''),
('Info_areaname', '全国', ''),
('module_close', '0', ''),
('Info_webname', '分类信息', ''),
('AdInfoSortShow', '10', ''),
('Info_ImgShopContact', '0', ''),
('InfoIndexCSLeng', '', ''),
('Info_showsortnum', '', ''),
('Info_ListNum', '', ''),
('AdInfoListRow', '10', ''),
('InfoListLeng', '30', ''),
('rand_num', '1376186023', ''),
('rand_num_inputname', 'jf', ''),
('path', '/do', ''),
('gg_map_api', '', ''),
('MailId', 'service@waicong.com', ''),
('CommentPass_group', '3', ''),
('showNoPassComment', '0', ''),
('alipay_id', 'test@test.com', ''),
('forbidRegName', '', ''),
('Info_MemberPostRepeat', '0', ''),
('sort_layout1', '180,181,187,188#183,185#184,186#182#2#', ''),
('alipay_service', 'create_partner_trade_by_buyer', ''),
('if_GGmap', '0', ''),
('Info_htmlname', 'html', ''),
('Info_htmlType', '0', ''),
('Info_ReportDB', '垃圾信息\r\n虚假信息\r\n违法信息\r\n雷同信息', ''),
('UpdatePostTime', '3', ''),
('Info_contact', '010-88888888\r\nkefu@gmail.com\r\nkefu@msn.com\r\n88888888', ''),
('Info_allcityType', '0', ''),
('memberNotice', '欢迎大家免费发布信息!', ''),
('AutoCutFace', '0', ''),
('Info_DelEndtime', '0', ''),
('DownLoad_readfile', '1', ''),
('label_cache_time', '-1', ''),
('post_htmlType', '0', ''),
('Info_ShowNoYz', '0', ''),
('CollectArticleNum', '50', ''),
('Info_allowGuesSearch', '1', ''),
('updir', 'upload_files', ''),
('mirror', '', ''),
('forbid_show_bug', '1', ''),
('is_waterimg', '1', ''),
('mymd5', '20587304', ''),
('companyTrade', '机械及行业设备\r\n普通机械制造\r\n通用零部件\r\n五金配件\r\n金属工具\r\n电动工具\r\n电子元件\r\n电子器件\r\n照明及照明器具\r\n安全防护设备\r\n包装\r\n造纸及纸制品\r\n电机、电工电器\r\n电工器材\r\n通用仪器仪表\r\n专用仪器仪表\r\n交通运输设备、零部件\r\n办公、文教用品\r\n数码、电脑及网络配件\r\n日常家居用品\r\n木材、木制品\r\n家具\r\n家用电器\r\n礼品、工艺美术品\r\n食品、饮料\r\n通信产品\r\n玩具\r\n印刷设备\r\n运动、休闲、保健用品\r\n鞋、帽\r\n服装\r\n日用化学品\r\n农用化学品\r\n胶粘剂\r\n染料、颜料、涂料和油墨\r\n催化剂和助剂\r\n库存精细化学品\r\n食品和饲料添加剂\r\n塑料\r\n橡胶制品\r\n环保、环保设备\r\n建筑、建材\r\n能源\r\n粮油、农制品\r\n金属\r\n医药、保健及医疗设备\r\n纺织\r\n皮革\r\n煤焦化产品\r\n日常服务\r\n广告服务\r\n教育培训\r\n认证\r\n创意设计\r\n物流服务\r\n进出口代理\r\n维修及安装服务\r\n广告、展览器材\r\n专业录音、放音设备\r\n光学摄影器材\r\n编辑制作设备\r\n播出、前端设备\r\n建筑、装饰业\r\n房地产\r\n安装工程\r\n邮电通信\r\n事务所、公证\r\n卫生、体育、社会、福利\r\n公共服务业\r\n金融、保险\r\n实业公司、商业贸易\r\n高新技术开发区\r\n卡类市场', ''),
('totalSpace', '100', ''),
('time', '0', ''),
('forbidRegIp', '', ''),
('style_member', 'default', ''),
('close_why', '网站维护当中,\r\n暂停访问.', ''),
('Info_Musttelephone', '0', ''),
('Info_Mustmobphone', '1', ''),
('Info_ForbidGuesViewContact', '0', ''),
('Info_forbidOutPost', '1', ''),
('Info_ClosePostWhy', '', ''),
('Info_GuestDayPostNum', '3', ''),
('guide_word', '', ''),
('alipay_scale', '100', ''),
('reg_group', '8', ''),
('YZ_MobMoney', '15', ''),
('MailPort', '25', ''),
('Info_MemberPostPicNum', '', ''),
('Info_MemberPostMoney', '2', ''),
('Info_MustQQ', '0', ''),
('Info_MustEmail', '0', ''),
('Info_TopColor', '#FF0033', ''),
('ArticlePicWidth', '300', ''),
('ForbidPostMember', '', ''),
('Info_cityPost', '0', ''),
('waterAlpha', '100', ''),
('limitRegTime', '', ''),
('yzImgReg', '0', ''),
('ForbidPostIp', '', ''),
('Info_showday', '3000000/10/30/60/90/180', ''),
('hideFid', '', ''),
('Info_YzKeyword', '性爱\r\n做爱\r\n共产党\r\n单人操作\r\n分析仪\r\n阿扁推翻\r\n阿宾\r\n阿賓\r\n挨了一炮\r\n爱液横流\r\n安街逆\r\n安局办公楼\r\n安局豪华\r\n安门事\r\n安眠藥\r\n案的准确\r\n八九民\r\n八九学\r\n八九政治\r\n把病人整\r\n把邓小平\r\n把学生整\r\n罢工门\r\n白黄牙签\r\n败培训\r\n办本科\r\n办理本科\r\n办理各种\r\n办理票据\r\n办理文凭\r\n办理真实\r\n办理证书\r\n办理资格\r\n办文凭\r\n办怔\r\n办证\r\n半刺刀\r\n辦毕业\r\n辦證\r\n谤罪获刑\r\n磅解码器\r\n磅遥控器\r\n宝在甘肃修\r\n保过答案\r\n报复执法\r\n爆发骚\r\n北省委门\r\n被打死\r\n被指抄袭\r\n被中共\r\n本公司担\r\n本无码\r\n毕业證\r\n变牌绝\r\n辩词与梦\r\n冰毒\r\n冰火毒\r\n冰火佳\r\n冰火九重\r\n冰火漫\r\n冰淫传\r\n冰在火上\r\n波推龙\r\n博彩娱\r\n博会暂停\r\n博园区伪\r\n不查都\r\n不查全\r\n不思四化\r\n布卖淫女\r\n部忙组阁\r\n部是这样\r\n才知道只生\r\n财众科技\r\n采花堂\r\n踩踏事\r\n苍山兰\r\n苍蝇水\r\n藏春阁\r\n藏獨\r\n操了嫂\r\n操嫂子\r\n策没有不\r\n插屁屁\r\n察象蚂\r\n拆迁灭\r\n车牌隐\r\n成人电\r\n成人卡通\r\n成人聊\r\n成人片\r\n成人视\r\n成人图\r\n成人文\r\n成人小\r\n城管灭\r\n惩公安\r\n惩贪难\r\n充气娃\r\n冲凉死\r\n抽着大中\r\n抽着芙蓉\r\n出成绩付\r\n出售发票\r\n出售军\r\n穿透仪器\r\n春水横溢\r\n纯度白\r\n纯度黄\r\n次通过考\r\n催眠水\r\n催情粉\r\n催情药\r\n催情藥\r\n挫仑\r\n达毕业证\r\n答案包\r\n答案提供\r\n打标语\r\n打错门\r\n打飞机专\r\n打死经过\r\n打死人\r\n打砸办公\r\n大鸡巴\r\n大雞巴\r\n大纪元\r\n大揭露\r\n大奶子\r\n大批贪官\r\n大肉棒\r\n大嘴歌\r\n代办发票\r\n代办各\r\n代办文\r\n代办学\r\n代办制\r\n代辦\r\n代表烦\r\n代開\r\n代考\r\n代理发票\r\n代理票据\r\n代您考\r\n代您考\r\n代写毕\r\n代写论\r\n代孕\r\n贷办\r\n贷借款\r\n贷开\r\n戴海静\r\n当代七整\r\n当官要精\r\n当官在于\r\n党的官\r\n党后萎\r\n党前干劲\r\n刀架保安\r\n导的情人\r\n导叫失\r\n导人的最\r\n导人最\r\n导小商\r\n到花心\r\n得财兼\r\n的同修\r\n灯草和\r\n等级證\r\n等屁民\r\n等人老百\r\n等人是老\r\n等人手术\r\n邓爷爷转\r\n邓玉娇\r\n地产之歌\r\n地下先烈\r\n地震哥\r\n帝国之梦\r\n递纸死\r\n点数优惠\r\n电狗\r\n电话监\r\n电鸡\r\n甸果敢\r\n蝶舞按\r\n丁香社\r\n丁子霖\r\n顶花心\r\n东北独立\r\n东复活\r\n东京热\r\n東京熱\r\n洞小口紧\r\n都当警\r\n都当小姐\r\n都进中央\r\n毒蛇钻\r\n独立台湾\r\n赌球网\r\n短信截\r\n对日强硬\r\n多美康\r\n躲猫猫\r\n俄羅斯\r\n恶势力操\r\n恶势力插\r\n恩氟烷\r\n儿园惨\r\n儿园砍\r\n儿园杀\r\n儿园凶\r\n二奶大\r\n发牌绝\r\n发票出\r\n发票代\r\n发票销\r\n發票\r\n法车仑\r\n法伦功\r\n法轮\r\n法轮佛\r\n法维权\r\n法一轮\r\n法院给废\r\n法正乾\r\n反测速雷\r\n反雷达测\r\n反屏蔽\r\n范燕琼\r\n方迷香\r\n防电子眼\r\n防身药水\r\n房贷给废\r\n仿真枪\r\n仿真证\r\n诽谤罪\r\n费私服\r\n封锁消\r\n佛同修\r\n夫妻交换\r\n福尔马林\r\n福娃的預\r\n福娃頭上\r\n福香巴\r\n府包庇\r\n府集中领\r\n妇销魂\r\n附送枪\r\n复印件生\r\n复印件制\r\n富民穷\r\n富婆给废\r\n改号软件\r\n感扑克\r\n冈本真\r\n肛交\r\n肛门是邻\r\n岡本真\r\n钢针狗\r\n钢珠枪\r\n港澳博球\r\n港馬會\r\n港鑫華\r\n高就在政\r\n高考黑\r\n高莺莺\r\n搞媛交\r\n告长期\r\n告洋状\r\n格证考试\r\n各类考试\r\n各类文凭\r\n跟踪器\r\n工程吞得\r\n工力人\r\n公安错打\r\n公安网监\r\n公开小姐\r\n攻官小姐\r\n共狗\r\n共王储\r\n狗粮\r\n狗屁专家\r\n鼓动一些\r\n乖乖粉\r\n官商勾\r\n官也不容\r\n官因发帖\r\n光学真题\r\n跪真相\r\n滚圆大乳\r\n国际投注\r\n国家妓\r\n国家软弱\r\n国家吞得\r\n国库折\r\n国一九五七\r\n國內美\r\n哈药直销\r\n海访民\r\n豪圈钱\r\n号屏蔽器\r\n和狗交\r\n和狗性\r\n和狗做\r\n黑火药的\r\n红色恐怖\r\n红外透视\r\n紅色恐\r\n胡江内斗\r\n胡紧套\r\n胡錦濤\\\\r\n胡适眼\r\n胡耀邦\r\n湖淫娘\r\n虎头猎\r\n华国锋\r\n华门开\r\n化学扫盲\r\n划老公\r\n还会吹萧\r\n还看锦涛\r\n环球证件\r\n换妻\r\n皇冠投注\r\n黄冰\r\n浑圆豪乳\r\n活不起\r\n火车也疯\r\n机定位器\r\n机号定\r\n机号卫\r\n机卡密\r\n机屏蔽器\r\n基本靠吼\r\n绩过后付\r\n激情电\r\n激情短\r\n激情妹\r\n激情炮\r\n级办理\r\n级答案\r\n急需嫖\r\n集体打砸\r\n集体腐\r\n挤乳汁\r\n擠乳汁\r\n佳静安定\r\n家一样饱\r\n家属被打\r\n甲虫跳\r\n甲流了\r\n奸成瘾\r\n兼职上门\r\n监听器\r\n监听王\r\n简易炸\r\n江胡内斗\r\n江太上\r\n江系人\r\n江贼民\r\n疆獨\r\n蒋彦永\r\n叫自慰\r\n揭贪难\r\n姐包夜\r\n姐服务\r\n姐兼职\r\n姐上门\r\n金扎金\r\n金钟气\r\n津大地震\r\n津地震\r\n进来的罪\r\n京地震\r\n京要地震\r\n经典谎言\r\n精子射在\r\n警察被\r\n警察的幌\r\n警察殴打\r\n警察说保\r\n警车雷达\r\n警方包庇\r\n警用品\r\n径步枪\r\n敬请忍\r\n究生答案\r\n九龙论坛\r\n九评共\r\n酒象喝汤\r\n酒像喝汤\r\n就爱插\r\n就要色\r\n举国体\r\n巨乳\r\n据说全民\r\n绝食声\r\n军长发威\r\n军刺\r\n军品特\r\n军用手\r\n开邓选\r\n开锁工具\r\n開碼\r\n開票\r\n砍杀幼\r\n砍伤儿\r\n康没有不\r\n康跳楼\r\n考答案\r\n考后付款\r\n考机构\r\n考考邓\r\n考联盟\r\n考前答\r\n考前答案\r\n考前付\r\n考设备\r\n考试包过\r\n考试保\r\n考试答案\r\n考试机构\r\n考试联盟\r\n考试枪\r\n考研考中\r\n考中答案\r\n磕彰\r\n克分析\r\n克千术\r\n克透视\r\n空和雅典\r\n孔摄像\r\n控诉世博\r\n控制媒\r\n口手枪\r\n骷髅死\r\n快速办\r\n矿难不公\r\n拉登说\r\n拉开水晶\r\n来福猎\r\n拦截器\r\n狼全部跪\r\n浪穴\r\n老虎机\r\n雷人女官\r\n类准确答\r\n黎阳平\r\n李洪志\r\n李咏曰\r\n理各种证\r\n理是影帝\r\n理证件\r\n理做帐报\r\n力骗中央\r\n力月西\r\n丽媛离\r\n利他林\r\n连发手\r\n聯繫電\r\n炼大法\r\n两岸才子\r\n两会代\r\n两会又三\r\n聊视频\r\n聊斋艳\r\n了件渔袍\r\n猎好帮手\r\n猎枪销\r\n猎槍\r\n獵槍\r\n领土拿\r\n流血事\r\n六合彩\r\n六死\r\n六四事\r\n六月联盟\r\n龙湾事件\r\n隆手指\r\n陆封锁\r\n陆同修\r\n氯胺酮\r\n乱奸\r\n乱伦类\r\n乱伦小\r\n亂倫\r\n伦理大\r\n伦理电影\r\n伦理毛\r\n伦理片\r\n轮功\r\n轮手枪\r\n论文代\r\n罗斯小姐\r\n裸聊网\r\n裸舞视\r\n落霞缀\r\n麻古\r\n麻果配\r\n麻果丸\r\n麻将透\r\n麻醉狗\r\n麻醉枪\r\n麻醉槍\r\n麻醉藥\r\n蟆叫专家\r\n卖地财政\r\n卖发票\r\n卖银行卡\r\n卖自考\r\n漫步丝\r\n忙爱国\r\n猫眼工具\r\n毛一鲜\r\n媒体封锁\r\n每周一死\r\n美艳少妇\r\n妹按摩\r\n妹上门\r\n门按摩\r\n门保健\r\n門服務\r\n氓培训\r\n蒙汗药\r\n迷幻型\r\n迷幻药\r\n迷幻藥\r\n迷昏口\r\n迷昏药\r\n迷昏藥\r\n迷魂香\r\n迷魂药\r\n迷魂藥\r\n迷奸药\r\n迷情水\r\n迷情药\r\n迷藥\r\n谜奸药\r\n蜜穴\r\n灭绝罪\r\n民储害\r\n民九亿商\r\n民抗议\r\n明慧网\r\n铭记印尼\r\n摩小姐\r\n母乳家\r\n木齐针\r\n幕没有不\r\n幕前戲\r\n内射\r\n南充针\r\n嫩穴\r\n嫩阴\r\n泥马之歌\r\n你的西域\r\n拟涛哥\r\n娘两腿之间\r\n妞上门\r\n浓精\r\n怒的志愿\r\n女被人家搞\r\n女激情\r\n女技师\r\n女人和狗\r\n女任职名\r\n女上门\r\n女優\r\n鸥之歌\r\n拍肩神药\r\n拍肩型\r\n牌分析\r\n牌技网\r\n炮的小蜜\r\n陪考枪\r\n配有消\r\n喷尿\r\n嫖俄罗\r\n嫖鸡\r\n平惨案\r\n平叫到床\r\n仆不怕饮\r\n普通嘌\r\n期货配\r\n奇迹的黄\r\n奇淫散\r\n骑单车出\r\n气狗\r\n气枪\r\n汽狗\r\n汽枪\r\n氣槍\r\n铅弹\r\n钱三字经\r\n枪出售\r\n枪的参\r\n枪的分\r\n枪的结\r\n枪的制\r\n枪货到\r\n枪决女犯\r\n枪决现场\r\n枪模\r\n枪手队\r\n枪手网\r\n枪销售\r\n枪械制\r\n枪子弹\r\n强权政府\r\n强硬发言\r\n抢其火炬\r\n切听器\r\n窃听器\r\n禽流感了\r\n勤捞致\r\n氢弹手\r\n清除负面\r\n清純壆\r\n情聊天室\r\n情妹妹\r\n情视频\r\n情自拍\r\n氰化钾\r\n氰化钠\r\n请集会\r\n请示威\r\n请愿\r\n琼花问\r\n区的雷人\r\n娶韩国\r\n全真证\r\n群奸暴\r\n群起抗暴\r\n群体性事\r\n绕过封锁\r\n惹的国\r\n人权律\r\n人体艺\r\n人游行\r\n人在云上\r\n人真钱\r\n认牌绝\r\n任于斯国\r\n柔胸粉\r\n肉洞\r\n肉棍\r\n如厕死\r\n乳交\r\n软弱的国\r\n赛后骚\r\n三挫\r\n三级片\r\n三秒倒\r\n三网友\r\n三唑\r\n骚妇\r\n骚浪\r\n骚穴\r\n骚嘴\r\n扫了爷爷\r\n色电影\r\n色妹妹\r\n色视频\r\n色小说\r\n杀指南\r\n山涉黑\r\n煽动不明\r\n煽动群众\r\n上门激\r\n烧公安局\r\n烧瓶的\r\n韶关斗\r\n韶关玩\r\n韶关旭\r\n射网枪\r\n涉嫌抄袭\r\n深喉冰\r\n神七假\r\n神韵艺术\r\n生被砍\r\n生踩踏\r\n生肖中特\r\n圣战不息\r\n盛行在舞\r\n尸博\r\n失身水\r\n失意药\r\n狮子旗\r\n十八等\r\n十大谎\r\n十大禁\r\n十个预言\r\n十类人不\r\n十七大幕\r\n实毕业证\r\n实体娃\r\n实学历文\r\n士康事件\r\n式粉推\r\n视解密\r\n是躲猫\r\n手变牌\r\n手答案\r\n手狗\r\n手机跟\r\n手机监\r\n手机窃\r\n手机追\r\n手拉鸡\r\n手木仓\r\n手槍\r\n守所死法\r\n兽交\r\n售步枪\r\n售纯度\r\n售单管\r\n售弹簧刀\r\n售防身\r\n售狗子\r\n售虎头\r\n售火药\r\n售假币\r\n售健卫\r\n售军用\r\n售猎枪\r\n售氯胺\r\n售麻醉\r\n售冒名\r\n售枪支\r\n售热武\r\n售三棱\r\n售手枪\r\n售五四\r\n售信用\r\n售一元硬\r\n售子弹\r\n售左轮\r\n书办理\r\n熟妇\r\n术牌具\r\n双管立\r\n双管平\r\n水阎王\r\n丝护士\r\n丝情侣\r\n丝袜保\r\n丝袜恋\r\n丝袜美\r\n丝袜妹\r\n丝袜网\r\n丝足按\r\n司长期有\r\n司法黑\r\n私房写真\r\n死法分布\r\n死要见毛\r\n四博会\r\n四大扯个\r\n四小码\r\n苏家屯集\r\n诉讼集团\r\n素女心\r\n速代办\r\n速取证\r\n酸羟亚胺\r\n蹋纳税\r\n太王四神\r\n泰兴幼\r\n泰兴镇中\r\n泰州幼\r\n贪官也辛\r\n探测狗\r\n涛共产\r\n涛一样胡\r\n特工资\r\n特码\r\n特上门\r\n体透视镜\r\n替考\r\n替人体\r\n天朝特\r\n天鹅之旅\r\n天推广歌\r\n田罢工\r\n田田桑\r\n田停工\r\n庭保养\r\n庭审直播\r\n通钢总经\r\n偷電器\r\n偷肃贪\r\n偷听器\r\n偷偷贪\r\n头双管\r\n透视功能\r\n透视镜\r\n透视扑\r\n透视器\r\n透视眼镜\r\n透视药\r\n透视仪\r\n秃鹰汽\r\n突破封锁\r\n突破网路\r\n推油按\r\n脱衣艳\r\n瓦斯手\r\n袜按摩\r\n外透视镜\r\n外围赌球\r\n湾版假\r\n万能钥匙\r\n万人骚动\r\n王立军\r\n王益案\r\n网民案\r\n网民获刑\r\n网民诬\r\n微型摄像\r\n围攻警\r\n围攻上海\r\n维汉员\r\n维权基\r\n维权人\r\n维权谈\r\n委坐船\r\n谓的和谐\r\n温家堡\r\n温切斯特\r\n温影帝\r\n溫家寶\r\n瘟加饱\r\n瘟假饱\r\n文凭证\r\n文强\r\n纹了毛\r\n闻被控制\r\n闻封锁\r\n瓮安\r\n我的西域\r\n我搞台独\r\n乌蝇水\r\n无耻语录\r\n无码专\r\n五套功\r\n五月天\r\n午夜电\r\n午夜极\r\n武警暴\r\n武警殴\r\n武警已增\r\n务员答案\r\n务员考试\r\n雾型迷\r\n西藏限\r\n西服进去\r\n希脏\r\n习进平\r\n习晋平\r\n席复活\r\n席临终前\r\n席指着护\r\n洗澡死\r\n喜贪赃\r\n先烈纷纷\r\n现大地震\r\n现金投注\r\n线透视镜\r\n限制言\r\n陷害案\r\n陷害罪\r\n相自首\r\n香港论坛\r\n香港马会\r\n香港一类\r\n香港总彩\r\n硝化甘\r\n小穴\r\n校骚乱\r\n协晃悠\r\n写两会\r\n泄漏的内\r\n新建户\r\n新疆叛\r\n新疆限\r\n新金瓶\r\n新唐人\r\n信访专班\r\n信接收器\r\n兴中心幼\r\n星上门\r\n行长王益\r\n形透视镜\r\n型手枪\r\n姓忽悠\r\n幸运码\r\n性爱日\r\n性福情\r\n性感少\r\n性推广歌\r\n胸主席\r\n徐玉元\r\n学骚乱\r\n学位證\r\n學生妹\r\n丫与王益\r\n烟感器\r\n严晓玲\r\n言被劳教\r\n言论罪\r\n盐酸曲\r\n颜射\r\n恙虫病\r\n姚明进去\r\n要人权\r\n要射精了\r\n要射了\r\n要泄了\r\n夜激情\r\n液体炸\r\n一小撮别\r\n遗情书\r\n蚁力神\r\n益关注组\r\n益受贿\r\n阴间来电\r\n陰唇\r\n陰道\r\n陰戶\r\n淫魔舞\r\n淫情女\r\n淫肉\r\n淫騷妹\r\n淫兽\r\n淫兽学\r\n淫水\r\n淫穴\r\n隐形耳\r\n隐形喷剂\r\n应子弹\r\n婴儿命\r\n咏妓\r\n用手枪\r\n幽谷三\r\n游精佑\r\n有奶不一\r\n右转是政\r\n幼齿类\r\n娱乐透视\r\n愚民同\r\n愚民政\r\n与狗性\r\n玉蒲团\r\n育部女官\r\n冤民大\r\n鸳鸯洗\r\n园惨案\r\n园发生砍\r\n园砍杀\r\n园凶杀\r\n园血案\r\n原一九五七\r\n原装弹\r\n袁腾飞\r\n晕倒型\r\n韵徐娘\r\n遭便衣\r\n遭到警\r\n遭警察\r\n遭武警\r\n择油录\r\n曾道人\r\n炸弹教\r\n炸弹遥控\r\n炸广州\r\n炸立交\r\n炸药的制\r\n炸药配\r\n炸药制\r\n张春桥\r\n找枪手\r\n找援交\r\n找政法委副\r\n赵紫阳\r\n针刺案\r\n针刺伤\r\n针刺事\r\n针刺死\r\n侦探设备\r\n真钱斗地\r\n真钱投注\r\n真善忍\r\n真实文凭\r\n真实资格\r\n震惊一个民\r\n震其国土\r\n证到付款\r\n证件办\r\n证件集团\r\n证生成器\r\n证书办\r\n证一次性\r\n政府操\r\n政论区\r\n證件\r\n植物冰\r\n殖器护\r\n指纹考勤\r\n指纹膜\r\n指纹套\r\n至国家高\r\n志不愿跟\r\n制服诱\r\n制手枪\r\n制证定金\r\n制作证件\r\n中的班禅\r\n中共黑\r\n中国不强\r\n种公务员\r\n种学历证\r\n众像羔\r\n州惨案\r\n州大批贪\r\n州三箭\r\n宙最高法\r\n昼将近\r\n主席忏\r\n住英国房\r\n助考\r\n助考网\r\n专业办理\r\n专业代\r\n专业代写\r\n专业助\r\n转是政府\r\n赚钱资料\r\n装弹甲\r\n装枪套\r\n装消音\r\n着护士的胸\r\n着涛哥\r\n姿不对死\r\n资格證\r\n资料泄\r\n梓健特药\r\n字牌汽\r\n自己找枪\r\n自慰用\r\n自由圣\r\n自由亚\r\n总会美女\r\n足球玩法\r\n最牛公安\r\n醉钢枪\r\n醉迷药\r\n醉乙醚\r\n尊爵粉\r\n左转是政\r\n作弊器\r\n作各种证\r\n作硝化甘\r\n唑仑\r\n做爱小\r\n做原子弹\r\n做证件', ''),
('Info_YzKeyword_DO', '1', ''),
('MailPw', 'kknew6891027', ''),
('Post_group_UpPhoto', '3,8,9', ''),
('Info_MemberChooseCity', '1', ''),
('group_UpPhoto', '3,8,9', ''),
('Info_index_cache', '', ''),
('Info_list_cache', '', ''),
('Info_GroupCommentYzImg', '3,8,9', ''),
('GroupPassYz', '', ''),
('GroupPostInfo', '', ''),
('Info_GroupPostYzImg', '', ''),
('webname', '易帮分类信息网', ''),
('metakeywords', '分类信息 二手 租房 二手车 加拿大', ''),
('description', '易帮分类信息网', ''),
('webmail', 'admin@admin.com', ''),
('UseMoneyType', 'cms', ''),
('BuySpacesizeMoney', '50', ''),
('UserEmailAutoPass', '1', ''),
('MoneyName', '积分', ''),
('QQ_appkey', '005b75f6027b306a5760b07a256996a3', ''),
('yzNumReg', '0', ''),
('QQ_QBappid', '100308742', ''),
('propagandize_jumpto', '/', ''),
('MoneyDW', '个', ''),
('web_open', '1', ''),
('style', 'baixing', ''),
('www_url', 'http://www.yibang.ca', ''),
('admin_url', 'admin', ''),
('upfileMaxSize', '', ''),
('upfileType', '.jpg .gif .png .jpeg .jpg_bi', ''),
('cookieDomain', '', ''),
('cookiePre', '', ''),
('miibeian_gov_cn', 'All Rights Reserved', ''),
('YZ_IdcardMoney', '20', ''),
('QQ_appid', '100308742', ''),
('QQ_login', '0', ''),
('emailOnly', '1', ''),
('regmoney', '5', ''),
('RegYz', '1', ''),
('QQ_logintime', '', ''),
('waterpos', '9', ''),
('ArticlePicHeight', '250', ''),
('rand_num_mktime', '0', ''),
('copyright', '<script>\r\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,''script'',''//www.google-analytics.com/analytics.js'',''ga'');\r\n\r\n  ga(''create'', ''UA-54052744-1'', ''auto'');\r\n  ga(''send'', ''pageview'');\r\n\r\n</script>', ''),
('yzImgAdminLogin', '0', ''),
('PostInfoMoney', '10', ''),
('Info_UseEndTime', '1', '');

-- --------------------------------------------------------

--
-- 表的结构 `qb_copyfrom`
--

CREATE TABLE IF NOT EXISTS `qb_copyfrom` (
  `id` mediumint(5) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `keywords` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_crontab`
--

CREATE TABLE IF NOT EXISTS `qb_crontab` (
  `id` mediumint(7) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `minutetime` mediumint(4) NOT NULL default '0',
  `daytime` varchar(4) NOT NULL default '0',
  `whiletime` int(10) NOT NULL default '0',
  `lasttime` int(10) NOT NULL default '0',
  `filepath` varchar(50) NOT NULL default '',
  `about` text NOT NULL,
  `ifstop` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `ifstop` (`ifstop`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `qb_crontab`
--

INSERT INTO `qb_crontab` (`id`, `title`, `minutetime`, `daytime`, `whiletime`, `lasttime`, `filepath`, `about`, `ifstop`) VALUES
(2, '备份数据库', 0, '0300', 0, 1292489459, 'inc/crontab/mysqlbak.php', '', 1),
(4, '清空附件表', 0, '', 1296504125, 0, 'inc/crontab/delete_table_upfile.php', '', 1),
(5, '定时自动数据采集', 0, '0330', 0, 1292492050, 'hack/SuperGatherTool/autogather.php', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_adminwork`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_adminwork` (
  `aid` mediumint(7) NOT NULL auto_increment,
  `type` varchar(30) NOT NULL default '',
  `id` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ifpm` tinyint(1) NOT NULL default '0',
  `fen` smallint(4) NOT NULL default '0',
  `reason` text NOT NULL,
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `type` (`type`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_area`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_area` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` text NOT NULL,
  `dirname` varchar(150) NOT NULL default '',
  `hits` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `qb_fenlei_area`
--

INSERT INTO `qb_fenlei_area` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `dirname`, `hits`) VALUES
(29, 0, 'BC', 1, 0, 0, '', 15, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0),
(30, 0, 'ON', 1, 0, 0, '', 14, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0),
(31, 0, 'QC', 1, 0, 0, '', 13, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0),
(32, 0, 'AB', 1, 0, 0, '', 12, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0),
(33, 0, 'SK', 1, 0, 0, '', 10, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0),
(34, 0, 'MB', 1, 0, 0, '', 11, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0),
(35, 0, 'NS', 1, 0, 0, '', 9, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0),
(36, 0, 'NB', 1, 0, 0, '', 8, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0),
(37, 0, 'NL', 1, 0, 0, '', 7, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0),
(38, 0, 'PEI', 1, 0, 0, '', 6, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_buyad`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_buyad` (
  `aid` mediumint(7) NOT NULL auto_increment,
  `sortid` mediumint(7) NOT NULL default '0',
  `cityid` mediumint(7) NOT NULL default '0',
  `id` int(10) NOT NULL default '0',
  `mid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `money` mediumint(7) NOT NULL default '0',
  `hits` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `sortid` (`sortid`,`money`,`endtime`,`cityid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=72 ;

--
-- 转存表中的数据 `qb_fenlei_buyad`
--

INSERT INTO `qb_fenlei_buyad` (`aid`, `sortid`, `cityid`, `id`, `mid`, `uid`, `begintime`, `endtime`, `money`, `hits`) VALUES
(1, 11, 1, 1, 0, 1, 1288747862, 1297387862, 25, 0),
(2, 1, 1, 1, 0, 1, 1288747862, 1297387862, 25, 0),
(3, 11, 1, 2, 0, 1, 1288748053, 1297388053, 25, 0),
(4, 1, 1, 2, 0, 1, 1288748053, 1297388053, 25, 0),
(5, 11, 1, 3, 0, 1, 1288748274, 1297388274, 25, 0),
(6, 1, 1, 3, 0, 1, 1288748274, 1297388274, 25, 0),
(7, 11, 1, 5, 0, 1, 1288748451, 1297388451, 25, 0),
(8, 1, 1, 5, 0, 1, 1288748451, 1297388451, 25, 0),
(9, 11, 1, 6, 0, 1, 1288748551, 1297388551, 25, 0),
(10, 1, 1, 6, 0, 1, 1288748551, 1297388551, 25, 0),
(11, 12, 1, 7, 0, 1, 1288748680, 1297388680, 25, 0),
(12, 1, 1, 7, 0, 1, 1288748680, 1297388680, 25, 0),
(13, 12, 1, 8, 0, 1, 1288748767, 1297388767, 25, 0),
(14, 1, 1, 8, 0, 1, 1288748767, 1297388767, 25, 0),
(15, 12, 1, 9, 0, 1, 1288748853, 1297388853, 25, 0),
(16, 1, 1, 9, 0, 1, 1288748853, 1297388853, 25, 0),
(17, 12, 1, 10, 0, 1, 1288748955, 1297388955, 25, 0),
(18, 1, 1, 10, 0, 1, 1288748955, 1297388955, 25, 0),
(19, 12, 1, 11, 0, 1, 1288749091, 1297389091, 25, 0),
(20, 1, 1, 11, 0, 1, 1288749091, 1297389091, 25, 0),
(21, 12, 1, 12, 0, 1, 1288749185, 1297389185, 25, 0),
(22, 1, 1, 12, 0, 1, 1288749185, 1297389185, 25, 0),
(23, 12, 1, 13, 0, 1, 1288749284, 1297389284, 25, 0),
(24, 1, 1, 13, 0, 1, 1288749284, 1297389284, 25, 0),
(25, 12, 1, 14, 0, 1, 1288749389, 1297389389, 25, 0),
(26, 1, 1, 14, 0, 1, 1288749389, 1297389389, 25, 0),
(33, 19, 1, 18, 0, 1, 1288749841, 1297389841, 25, 0),
(34, 1, 1, 18, 0, 1, 1288749841, 1297389841, 25, 0),
(35, 19, 1, 19, 0, 1, 1288749918, 1297389918, 25, 0),
(36, 1, 1, 19, 0, 1, 1288749918, 1297389918, 25, 0),
(37, 19, 1, 20, 0, 1, 1288750024, 1297390024, 25, 0),
(38, 1, 1, 20, 0, 1, 1288750024, 1297390024, 25, 0),
(39, 19, 1, 21, 0, 1, 1288750130, 1297390130, 25, 0),
(40, 1, 1, 21, 0, 1, 1288750130, 1297390130, 25, 0),
(41, 19, 1, 22, 0, 1, 1288750213, 1297390213, 25, 0),
(42, 1, 1, 22, 0, 1, 1288750213, 1297390213, 25, 0),
(43, 19, 1, 23, 0, 1, 1288750318, 1297390318, 25, 0),
(44, 1, 1, 23, 0, 1, 1288750318, 1297390318, 25, 0),
(45, 19, 1, 24, 0, 1, 1288750366, 1297390366, 25, 0),
(46, 1, 1, 24, 0, 1, 1288750366, 1297390366, 25, 0),
(47, 11, 1, 25, 0, 1, 1288750509, 1297390509, 25, 0),
(48, 1, 1, 25, 0, 1, 1288750509, 1297390509, 25, 0),
(49, 11, 1, 26, 0, 1, 1288750587, 1297390587, 25, 0),
(50, 1, 1, 26, 0, 1, 1288750587, 1297390587, 25, 0),
(51, 11, 1, 27, 0, 1, 1288750643, 1297390643, 25, 0),
(52, 1, 1, 27, 0, 1, 1288750643, 1297390643, 25, 0),
(61, 60, 1, 33, 0, 1, 1288762758, 1297402758, 25, 0),
(62, 3, 1, 33, 0, 1, 1288762758, 1297402758, 25, 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_city`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_city` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` text NOT NULL,
  `hits` mediumint(7) NOT NULL default '0',
  `letter` varchar(5) NOT NULL default '',
  `domain` varchar(150) NOT NULL default '',
  `dirname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`),
  KEY `letter` (`letter`),
  KEY `list` (`list`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=359 ;

--
-- 转存表中的数据 `qb_fenlei_city`
--

INSERT INTO `qb_fenlei_city` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `hits`, `letter`, `domain`, `dirname`) VALUES
(1, 29, '温哥华', 0, 0, 0, '', 0, 0, '', '', '', '', '|||', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'w', '', 'c/vancouver'),
(340, 30, '多伦多', 0, 0, 0, '', 0, 0, '', '', '', '', '|||', '', 0, '', '', 0, '', '', '', '', 0, '', 1, 'd', '', 'duolunduo'),
(341, 30, '渥太华', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 't', '', ''),
(342, 30, '温莎', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'w', '', ''),
(343, 30, '哈密尔顿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'h', '', ''),
(344, 31, '魁北克市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'k', '', ''),
(345, 31, '蒙特利尔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'm', '', ''),
(346, 34, '温尼伯', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'w', '', ''),
(347, 34, '布兰顿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'b', '', ''),
(348, 33, '里贾纳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'l', '', ''),
(349, 35, '哈里法克斯', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'h', '', ''),
(350, 32, '卡尔加里', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'k', '', ''),
(351, 32, '埃德蒙顿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'a', '', ''),
(352, 36, '弗雷瑞克登', 0, 0, 0, '', 0, 0, '', '', '', '', '|||', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'f', '', 'fuleiruikedeng'),
(353, 38, '夏洛特顿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'x', '', ''),
(354, 37, '圣约翰斯', 0, 0, 0, '', 0, 0, '', '', '', '', '|||', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 's', '', 'shengyuehansi'),
(356, 33, '萨斯卡通', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 's', '', ''),
(357, 30, '伦敦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'l', '', ''),
(358, 36, '圣约瀚', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 's', '', ''),
(339, 29, '维多利亚', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 0, 'w', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_class`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_class` (
  `fid` int(7) NOT NULL auto_increment,
  `fup` int(7) NOT NULL default '0',
  `name` varchar(60) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `qb_fenlei_class`
--

INSERT INTO `qb_fenlei_class` (`fid`, `fup`, `name`, `list`) VALUES
(31, 0, '岗位类型', 1),
(32, 31, '计算机/互联网类', 0),
(33, 31, '人力资源/行政/文职人员', 0),
(34, 31, '医疗卫生/美容保健', 0),
(38, 34, '护士/护理人员', 0),
(37, 34, '医生/医师', 0),
(39, 33, '文员/秘书', 0),
(40, 33, '行政/人力资源总监', 0),
(41, 32, '软件工程师', 0),
(42, 32, '硬件工程师', 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_collection`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_collection` (
  `cid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_comments`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_comments` (
  `cid` mediumint(7) unsigned NOT NULL auto_increment,
  `cuid` int(7) NOT NULL default '0',
  `type` tinyint(2) NOT NULL default '0',
  `id` int(10) unsigned NOT NULL default '0',
  `fid` mediumint(7) unsigned NOT NULL default '0',
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `icon` tinyint(3) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `flowers` smallint(4) NOT NULL default '0',
  `egg` smallint(4) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `type` (`type`),
  KEY `cuid` (`cuid`),
  KEY `id` (`id`,`yz`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_config`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `qb_fenlei_config`
--

INSERT INTO `qb_fenlei_config` (`c_key`, `c_value`, `c_descrip`) VALUES
('AdInfoListLeng', '40', ''),
('Info_PostMaxNum', '20', ''),
('Info_TopNum', '5', ''),
('AdInfoSortShow', '10', ''),
('AdInfoShowTime', '100', ''),
('Info_feedbackID', '111111', ''),
('Info_MakeIndexHtmlTime', '0', ''),
('ErrSortMoney', '13', ''),
('Info_DelKeyword', '暴乱\r\n反动', ''),
('Info_PostMaxLeng', '100000', ''),
('Info_RepeatPostNum', '3', ''),
('Info_postCkMob', '0', ''),
('Info_postCkIp', '0', ''),
('DelOtherCommentMoney', '12', ''),
('otherCardMoney', '11', ''),
('permitMoney', '10', ''),
('IDcardMoney', '9', ''),
('EmailYzMoney', '8', ''),
('ReportMoney', '7', ''),
('GoodCommentMoney', '6', ''),
('PublicizeRegMoney', '5', ''),
('ALLInfoMoney', '4', ''),
('Info_loginTime', '16', ''),
('Info_loginMoney', '3', ''),
('Info_regmoney', '1', ''),
('illInfoMoney', '14', ''),
('DelReportMoney', '15', ''),
('Jump_allcity', '0', ''),
('Jump_fromarea', '1', ''),
('Info_TopMoney', '3', ''),
('Info_closeWhy', '网站维护当中,暂停开放', ''),
('sort_layout', '10,9,150,165#2,4#1,5,3#6,7,8#', ''),
('Info_GroupCommentYzImg', '2,3,4,8,9', ''),
('Info_GroupPostYzImg', '2,3,4,8,9', ''),
('Info_weburl', '', ''),
('ForbidPostIp', '', ''),
('AdInfoIndexLeng', '', ''),
('Info_ForbidMemberViewContact', '0', ''),
('Info_ShowSearchContact', '0', ''),
('Info_ImgShopContact', '0', ''),
('Info_ForbidGuesViewContact', '0', ''),
('Info_TopDay', '2', ''),
('ForbidPostMember', '', ''),
('Info_cityPost', '0', ''),
('AdInfoBigsortShow', '15', ''),
('InfoIndexCSRow', '', ''),
('Force_Choose_City', '0', ''),
('post_htmlType', '0', ''),
('Info_Searchkeyword', '0', ''),
('Post_group_UpPhoto', '', ''),
('Info_forbidOutPost', '1', ''),
('Info_MemberPostRepeat', '0', ''),
('Info_GuestPostRepeat', '0', ''),
('Info_MemberPostMoney', '2', ''),
('InfoIndexLeng', '26', ''),
('InfoIndexRow', '8', ''),
('InfoListRow', '10', ''),
('AdInfoIndexRow', '16', ''),
('group_UpPhoto', '', ''),
('Info_contact', '010-88888888\r\nkefu@gmail.com\r\nkefu@msn.com\r\n88888888', ''),
('UpdatePostTime', '3', ''),
('Info_showday', '3/10/30/60/90/180', ''),
('Info_guide_word', '', ''),
('Info_ShowNoYz', '1', ''),
('Info_DelEndtime', '0', ''),
('Info_MemberPostPicNum', '', ''),
('Info_MemberDayPostNum', '20', ''),
('Info_GuestPostPicNum', '', ''),
('Info_GuestDayPostNum', '3', ''),
('Info_ClosePostWhy', '严打时期,暂停发布与修改信息', ''),
('Info_YzKeyword_DO', '0', ''),
('CommentPass_group', '3,4', ''),
('Info_htmlType', '0', ''),
('Info_allcityType', '0', ''),
('Info_MemberChooseCity', '0', ''),
('Info_UseEndTime', '1', ''),
('CollectArticleNum', '23', ''),
('PostInfoMoney', '2', ''),
('Info_allowGuesSearch', '1', ''),
('Info_ClosePost', '0', ''),
('module_pre', 'fenlei_', ''),
('Info_style', '', ''),
('Info_metakeywords', '房产 二手 交易 黄页', ''),
('Info_webadmin', '', ''),
('Info_webOpen', '1', ''),
('Info_areaname', '全国', ''),
('module_close', '0', ''),
('Info_htmlname', 'html', ''),
('Info_webname', '分类信息', ''),
('AdInfoIndexShow', '20', ''),
('GroupPassYz', '', ''),
('GroupPostInfo', '', ''),
('Info_TopColor', '#F70968', ''),
('Info_Musttelephone', '0', ''),
('Info_Mustmobphone', '0', ''),
('Info_MustQQ', '0', ''),
('Info_MustEmail', '0', ''),
('InfoIndexCSLeng', '', ''),
('Info_showsortnum', '', ''),
('Info_ListNum', '', ''),
('AdInfoListRow', '10', ''),
('InfoListLeng', '30', ''),
('showNoPassComment', '0', ''),
('Info_YzKeyword', '性爱\r\n做爱\r\n共产党', ''),
('rand_num', '1288762604', ''),
('rand_num_inputname', 'hna', ''),
('Info_ReportDB', '垃圾信息\r\n虚假信息\r\n违法信息\r\n雷同信息', ''),
('Info_index_cache', '', ''),
('Info_list_cache', '', ''),
('rand_num_mktime', '1', ''),
('module_id', '1', '');

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `albumid` mediumint(7) NOT NULL default '0',
  `albumname` varchar(50) NOT NULL default '',
  `mid` smallint(4) NOT NULL default '0',
  `spid` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `fname` varchar(50) NOT NULL default '',
  `fid_bak1` mediumint(7) NOT NULL default '0',
  `fid_bak2` mediumint(7) NOT NULL default '0',
  `fid_bak3` mediumint(7) NOT NULL default '0',
  `info` tinyint(2) NOT NULL default '0',
  `hits` mediumint(7) NOT NULL default '0',
  `comments` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `list` varchar(10) NOT NULL default '',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `titlecolor` varchar(15) NOT NULL default '',
  `fonttype` tinyint(1) NOT NULL default '0',
  `picurl` varchar(150) NOT NULL default '',
  `ispic` tinyint(1) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `yzer` varchar(30) NOT NULL default '',
  `yztime` int(10) NOT NULL default '0',
  `levels` tinyint(2) NOT NULL default '0',
  `levelstime` int(10) NOT NULL default '0',
  `keywords` varchar(100) NOT NULL default '',
  `jumpurl` varchar(150) NOT NULL default '',
  `iframeurl` varchar(150) NOT NULL default '',
  `style` varchar(15) NOT NULL default '',
  `head_tpl` varchar(150) NOT NULL default '',
  `main_tpl` varchar(150) NOT NULL default '',
  `foot_tpl` varchar(100) NOT NULL default '',
  `target` tinyint(1) NOT NULL default '0',
  `ishtml` tinyint(1) NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `lastfid` mediumint(7) NOT NULL default '0',
  `money` mediumint(7) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `editer` varchar(30) NOT NULL default '',
  `edittime` int(10) NOT NULL default '0',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `config` text NOT NULL,
  `lastview` int(10) NOT NULL default '0',
  `city_id` mediumint(7) NOT NULL default '0',
  `zone_id` mediumint(7) NOT NULL default '0',
  `street_id` mediumint(7) NOT NULL default '0',
  `editpwd` varchar(32) NOT NULL default '',
  `showday` mediumint(4) NOT NULL default '0',
  `visit_log` text NOT NULL,
  `visit_num` mediumint(7) unsigned NOT NULL default '0',
  `telephone` varchar(30) NOT NULL default '',
  `mobphone` varchar(12) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `oicq` varchar(11) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `linkman` varchar(20) NOT NULL default '',
  `postcode` varchar(6) NOT NULL default '',
  `address` varchar(250) NOT NULL default '',
  `weburl` varchar(150) NOT NULL default '',
  `fax` varchar(30) NOT NULL default '',
  `maps` varchar(50) NOT NULL default '',
  `picnum` smallint(4) NOT NULL default '0',
  `replytime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`),
  KEY `ispic` (`ispic`),
  KEY `city_id` (`city_id`),
  KEY `zone_id` (`zone_id`),
  KEY `street_id` (`street_id`),
  KEY `list` (`list`,`fid`,`city_id`,`yz`),
  KEY `hits` (`hits`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=983 ;

--
-- 转存表中的数据 `qb_fenlei_content`
--

INSERT INTO `qb_fenlei_content` (`id`, `title`, `albumid`, `albumname`, `mid`, `spid`, `fid`, `fname`, `fid_bak1`, `fid_bak2`, `fid_bak3`, `info`, `hits`, `comments`, `posttime`, `list`, `uid`, `username`, `titlecolor`, `fonttype`, `picurl`, `ispic`, `yz`, `yzer`, `yztime`, `levels`, `levelstime`, `keywords`, `jumpurl`, `iframeurl`, `style`, `head_tpl`, `main_tpl`, `foot_tpl`, `target`, `ishtml`, `ip`, `lastfid`, `money`, `passwd`, `editer`, `edittime`, `begintime`, `endtime`, `config`, `lastview`, `city_id`, `zone_id`, `street_id`, `editpwd`, `showday`, `visit_log`, `visit_num`, `telephone`, `mobphone`, `email`, `oicq`, `msn`, `linkman`, `postcode`, `address`, `weburl`, `fax`, `maps`, `picnum`, `replytime`) VALUES
(982, 'asdasd', 0, '', 15, 0, 43, '二手手机', 0, 0, 0, 0, 5, 0, 1408975791, '1408975791', 14, 'asdasd', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', '', '', '', 0, 0, '24.79.117.141', 0, 0, '', '', 0, 0, 2147483647, '', 1412536617, 1, 2, 0, '', 3000000, '', 0, '', '123123123', '', '', '', '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_4`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_4` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `jzgsmc` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_7`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_7` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `my_acreage` varchar(12) NOT NULL default '',
  `my_price` int(10) NOT NULL default '0',
  `my_fitment` varchar(20) NOT NULL default '',
  `my_floor` varchar(5) NOT NULL default '',
  `my_station` varchar(50) NOT NULL default '',
  `my_bus` varchar(50) NOT NULL default '',
  `sortid` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_13`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_13` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL default '0',
  `sortid2` tinyint(3) NOT NULL default '0',
  `my_228` tinyint(1) NOT NULL default '0',
  `my_837` varchar(100) NOT NULL default '',
  `my_613` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `my_228` (`my_228`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_14`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_14` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL default '0',
  `sortid2` tinyint(3) NOT NULL default '0',
  `my_382` tinyint(1) NOT NULL default '0',
  `my_835` varchar(100) NOT NULL default '',
  `my_491` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `my_382` (`my_382`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_15`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_15` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(2) NOT NULL,
  `shoujipinpai` varchar(255) NOT NULL,
  `shoujijiage` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `my_658` (`shoujipinpai`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=724 ;

--
-- 转存表中的数据 `qb_fenlei_content_15`
--

INSERT INTO `qb_fenlei_content_15` (`rid`, `id`, `fid`, `uid`, `content`, `sortid`, `shoujipinpai`, `shoujijiage`) VALUES
(723, 982, 43, 14, '123123', 1, '苹果/iPhone', '123123');

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_16`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_16` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(2) NOT NULL,
  `haomajiage` varchar(255) NOT NULL,
  `shoujifenlei` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `my_121` (`haomajiage`),
  KEY `my_287` (`shoujifenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=86 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_17`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_17` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(2) NOT NULL,
  `bijibenpinpai` varchar(255) NOT NULL,
  `bijibenjiage` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `my_446` (`bijibenpinpai`),
  KEY `bijibenjiage` (`bijibenjiage`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_18`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_18` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(2) NOT NULL,
  `ipanpinpai` varchar(255) NOT NULL,
  `ipanjiage` int(10) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `ipanpinpai` (`ipanpinpai`),
  KEY `ipanjiage` (`ipanjiage`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_19`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_19` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(2) NOT NULL,
  `cpjg` int(10) NOT NULL,
  `zuzhuangji` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `cpjg` (`cpjg`),
  KEY `cpfbr` (`zuzhuangji`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_21`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_21` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(2) NOT NULL,
  `diannpeijian` varchar(255) NOT NULL,
  `peijianjiage` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `diannpeijian` (`diannpeijian`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_22`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_22` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(2) NOT NULL,
  `shuamafenlei` varchar(255) NOT NULL,
  `shumajiage` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `shuamafenlei` (`shuamafenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_23`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_23` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `jiajufeilei` varchar(255) NOT NULL,
  `jiajujiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `jiajufeilei` (`jiajufeilei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_24`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_24` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `dianqifenlei` varchar(255) NOT NULL,
  `dianqijiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `dianqifenlei` (`dianqifenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_25`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_25` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `riyongfenlei` varchar(255) NOT NULL,
  `riyongjiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `riyongfenlei` (`riyongfenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_26`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_26` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `nongchanpinfenlei` varchar(255) NOT NULL,
  `nongchanpinjiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `nongchanpinfenlei` (`nongchanpinfenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_27`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_27` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `bangongfenlei` varchar(255) NOT NULL,
  `bangongjiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `bangongfenlei` (`bangongfenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_28`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_28` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `shouchangfenlei` varchar(255) NOT NULL,
  `shoucangjiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `shouchangfenlei` (`shouchangfenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_29`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_29` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `fuzhuangfenlei` varchar(255) NOT NULL,
  `fuzhuangjiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `fuzhuangfenlei` (`fuzhuangfenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_30`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_30` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `muyingfenlei` varchar(255) NOT NULL,
  `muyingjiage` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `muyingfenlei` (`muyingfenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_31`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_31` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `shoubiaofenlei` varchar(255) NOT NULL,
  `shoubiaojiage` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `shoubiaofenlei` (`shoubiaofenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_32`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_32` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `xiezifenlei` varchar(255) NOT NULL,
  `xiebaojiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `xiezifenlei` (`xiezifenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_33`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_33` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `xunifenlei` varchar(255) NOT NULL,
  `xunijiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `xunifenlei` (`xunifenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_34`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_34` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `ytlfl` varchar(255) NOT NULL,
  `ytljg` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `ytlfl` (`ytlfl`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_35`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_35` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `mpkjfl` varchar(255) NOT NULL,
  `mpjg` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `mpkjfl` (`mpkjfl`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_36`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_36` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `wtypfl` varchar(255) NOT NULL,
  `wtypjg` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `wtypfl` (`wtypfl`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_37`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_37` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `huishoujiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_38`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_38` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(3) NOT NULL,
  `qitajiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_39`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_39` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `shebeifenlei` varchar(255) NOT NULL,
  `shebeijiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `shebeifenlei` (`shebeifenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_40`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_40` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `qichepinpai` varchar(255) NOT NULL,
  `chexing` varchar(255) NOT NULL,
  `nianfen` varchar(255) NOT NULL,
  `licheng` mediumtext NOT NULL,
  `chejiage` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `qichepinpai` (`qichepinpai`),
  KEY `chexing` (`chexing`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_41`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_41` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `huocheleixing` varchar(255) NOT NULL,
  `huochepinpai` varchar(255) NOT NULL,
  `huochejiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `huocheleixing` (`huocheleixing`),
  KEY `huochepinpai` (`huochepinpai`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_42`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_42` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `mbclx` varchar(255) NOT NULL,
  `mbcpp` varchar(255) NOT NULL,
  `spnf` varchar(255) NOT NULL,
  `mbcxslc` mediumtext NOT NULL,
  `mbcjg` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `mbclx` (`mbclx`),
  KEY `my_364` (`mbcpp`),
  KEY `spnf` (`spnf`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_43`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_43` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `tuolajileixing` varchar(255) NOT NULL,
  `tljpp` varchar(255) NOT NULL,
  `tljjg` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `tuolajileixing` (`tuolajileixing`),
  KEY `tljpp` (`tljpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_44`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_44` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `xinchejiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_45`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_45` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `qcypjg` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_46`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_46` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `cqpjjge` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_47`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_47` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `shougoujiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_48`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_48` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `guohujiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_49`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_49` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(3) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_50`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_50` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `zuchejiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_51`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_51` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `mtcfl` varchar(255) NOT NULL,
  `mtcpp` varchar(255) NOT NULL,
  `mtcjg` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `mtcfl` (`mtcfl`),
  KEY `mtcpp` (`mtcpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_52`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_52` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `ddcfl` varchar(255) NOT NULL,
  `ddcpp` varchar(255) NOT NULL,
  `ddcjg` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `ddcfl` (`ddcfl`),
  KEY `ddcpp` (`ddcpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_53`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_53` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `zxclx` varchar(255) NOT NULL,
  `zxcpp` varchar(255) NOT NULL,
  `zxcjg` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `zxclx` (`zxclx`),
  KEY `zxcpp` (`zxcpp`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_54`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_54` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `zufangleixing` varchar(255) NOT NULL,
  `fangxing` varchar(255) NOT NULL,
  `louceng` mediumtext NOT NULL,
  `zujin` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `zufangleixing` (`zufangleixing`),
  KEY `fangxing` (`fangxing`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_55`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_55` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `rizufenlei` varchar(255) NOT NULL,
  `chuzuxingshi` varchar(255) NOT NULL,
  `rizuzujin` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `rizufenlei` (`rizufenlei`),
  KEY `chuzuxingshi` (`chuzuxingshi`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_56`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_56` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `zhuangxiuqingkuang` varchar(255) NOT NULL,
  `ershoufangfangxing` varchar(255) NOT NULL,
  `mianji` mediumtext NOT NULL,
  `ershoufangjiage` varchar(255) NOT NULL,
  `esflc` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `ershoufangfangxing` (`ershoufangfangxing`),
  KEY `zhuangxiuqingkuang` (`zhuangxiuqingkuang`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_59`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_59` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `xiaoqumingcheng` mediumtext NOT NULL,
  `xinfangfangxing` varchar(255) NOT NULL,
  `xinfangmianji` mediumtext NOT NULL,
  `xinfangjiage` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `xinfangfangxing` (`xinfangfangxing`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_60`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_60` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `fenlei` varchar(255) NOT NULL,
  `xieziloumianji` mediumtext NOT NULL,
  `xieziloujiage` mediumtext NOT NULL,
  `louyumingcheng` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `fenlei` (`fenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_61`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_61` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `shangpufenlei` varchar(255) NOT NULL,
  `shangpumianj` mediumtext NOT NULL,
  `shangpujiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `shangpufenlei` (`shangpufenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_62`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_62` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `dianpufenlei` varchar(255) NOT NULL,
  `dianpumianji` varchar(255) NOT NULL,
  `zhuanrangfei` mediumtext NOT NULL,
  `dianpuzujin` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `dianpufenlei` (`dianpufenlei`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_63`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_63` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL,
  `cctlx` varchar(255) NOT NULL,
  `changfangjiage` mediumtext NOT NULL,
  `changfangmianji` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `cctlx` (`cctlx`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_64`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_64` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `jubanchangguan` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_65`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_65` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `gongzuomingcheng` mediumtext NOT NULL,
  `lianxiren` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_66`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_66` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `bjgongzi` mediumtext NOT NULL,
  `bjgongsi` varchar(255) NOT NULL,
  `bjlianxiren` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_67`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_67` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `gggongzi` mediumtext NOT NULL,
  `gggongsi` mediumtext NOT NULL,
  `gglianxi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_68`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_68` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `itgongzi` mediumtext NOT NULL,
  `itgongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_69`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_69` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `jygongsi` mediumtext NOT NULL,
  `jygongzi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_70`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_70` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `cwgongzi` mediumtext NOT NULL,
  `cwgongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_71`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_71` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `grgzsj` varchar(255) NOT NULL,
  `grgongzi` mediumtext NOT NULL,
  `grgognsi` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `grgzsj` (`grgzsj`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_72`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_72` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `fanyigongzi` mediumtext NOT NULL,
  `fygs` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_73`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_73` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `xsgongzi` mediumtext NOT NULL,
  `xsgongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_74`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_74` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `site` mediumtext NOT NULL,
  `wangzhi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_75`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_75` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `lipinjiage` mediumtext NOT NULL,
  `lipingongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_76`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_76` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `shmc` mediumtext NOT NULL,
  `xhjg` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_77`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_77` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `fygsmc` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_78`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_78` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `lvshihang` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_79`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_79` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `baojia` mediumtext NOT NULL,
  `shejigongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_80`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_80` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `yinshuajiage` mediumtext NOT NULL,
  `yinshuagongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_81`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_81` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `qingdianjiage` mediumtext NOT NULL,
  `qingdiangongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_82`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_82` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `zulinjiage` mediumtext NOT NULL,
  `zulingongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_83`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_83` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `kuaidijiage` mediumtext NOT NULL,
  `kuaidigongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_84`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_84` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `gsmc` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_85`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_85` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `feiyong` varchar(255) NOT NULL,
  `kuaijigongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_86`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_86` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `gszcbj` mediumtext NOT NULL,
  `gszcgs` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_87`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_87` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `danbaogongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_88`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_88` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `zsgs` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_89`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_89` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `qianzhenggognsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_90`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_90` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `jiudianjiage` mediumtext NOT NULL,
  `jiudianmingzi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_91`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_91` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `yulejiage` mediumtext NOT NULL,
  `xiuxianshanghu` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_92`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_92` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `lvxingshe` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_93`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_93` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `canguanming` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_94`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_94` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `shutongjiage` mediumtext NOT NULL,
  `shutonggongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_95`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_95` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `weixiujiage` varchar(255) NOT NULL,
  `weixiugongsi` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_96`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_96` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `diannaojiage` mediumtext NOT NULL,
  `diannaogongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_97`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_97` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `jdwxjg` mediumtext NOT NULL,
  `jdwxgs` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_98`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_98` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_99`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_99` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `baojiejiage` mediumtext NOT NULL,
  `baojiegongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_100`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_100` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `yuesaogongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_101`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_101` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `touzigongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_102`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_102` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `jiancaijiage` mediumtext NOT NULL,
  `jiancaigongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_103`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_103` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `zhuangxiujiage` mediumtext NOT NULL,
  `zhuangxiugongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_104`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_104` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `meirongjiage` varchar(255) NOT NULL,
  `meironggongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_105`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_105` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `sheyingjiage` mediumtext NOT NULL,
  `sheyinggongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_106`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_106` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `hunqingjiage` mediumtext NOT NULL,
  `hunqinggongsi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_107`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_107` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `jnxf` varchar(255) NOT NULL,
  `jbskdd` mediumtext NOT NULL,
  `jnxxmc` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_108`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_108` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `xlxf` mediumtext NOT NULL,
  `xlskdd` mediumtext NOT NULL,
  `xlxxmc` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_109`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_109` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `qtskdd` mediumtext NOT NULL,
  `qtxxmc` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_110`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_110` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `zxxxf` mediumtext NOT NULL,
  `zxskdd` mediumtext NOT NULL,
  `zxxxmc` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_111`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_111` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `wykcxf` mediumtext NOT NULL,
  `wyxxmc` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_112`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_112` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` int(10) NOT NULL,
  `nianling` varchar(255) NOT NULL,
  `xianjuzhudi` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_113`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_113` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `woxiangxue` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_114`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_114` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_115`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_115` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `xingming` mediumtext NOT NULL,
  `qznianling` varchar(255) NOT NULL,
  `qzxingbie` varchar(255) NOT NULL,
  `jzxueli` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `qzxingbie` (`qzxingbie`),
  KEY `jzxueli` (`jzxueli`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_116`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_116` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `qizhixingming` mediumtext NOT NULL,
  `qiuzhixingbie` varchar(255) NOT NULL,
  `qiuzhinianling` mediumtext NOT NULL,
  `qiuzhixueli` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `qiuzhixueli` (`qiuzhixueli`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_117`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_117` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `gongmu` varchar(255) NOT NULL,
  `gougoujiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `gongmu` (`gongmu`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_118`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_118` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `maomaojiage` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_119`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_119` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `hnycjg` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_120`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_120` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_121`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_121` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `cwypjg` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_content_122`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_content_122` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `sortid` varchar(255) NOT NULL,
  `cwfwjg` mediumtext NOT NULL,
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_db`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_db` (
  `id` int(10) NOT NULL auto_increment,
  `fid` mediumint(7) NOT NULL default '0',
  `city_id` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`),
  KEY `city_id` (`city_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=983 ;

--
-- 转存表中的数据 `qb_fenlei_db`
--

INSERT INTO `qb_fenlei_db` (`id`, `fid`, `city_id`, `uid`) VALUES
(982, 43, 1, 14);

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_dianping`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_dianping` (
  `cid` mediumint(7) unsigned NOT NULL auto_increment,
  `cuid` int(7) NOT NULL default '0',
  `type` tinyint(2) NOT NULL default '0',
  `id` mediumint(7) unsigned NOT NULL default '0',
  `fid` mediumint(7) unsigned NOT NULL default '0',
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `icon` tinyint(3) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `fen1` smallint(4) NOT NULL default '0',
  `fen2` smallint(4) NOT NULL default '0',
  `fen3` smallint(4) NOT NULL default '0',
  `fen4` smallint(4) NOT NULL default '0',
  `fen5` smallint(4) NOT NULL default '0',
  `flowers` smallint(4) NOT NULL default '0',
  `egg` smallint(4) NOT NULL default '0',
  `price` mediumint(5) NOT NULL default '0',
  `keywords` varchar(100) NOT NULL default '',
  `keywords2` varchar(100) NOT NULL default '',
  `fen6` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`cid`),
  KEY `type` (`type`),
  KEY `cuid` (`cuid`),
  KEY `id` (`id`,`yz`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_field`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_field` (
  `id` mediumint(7) NOT NULL auto_increment,
  `mid` mediumint(5) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `field_name` varchar(30) NOT NULL default '',
  `field_type` varchar(15) NOT NULL default '',
  `field_leng` smallint(3) NOT NULL default '0',
  `orderlist` int(10) NOT NULL default '0',
  `form_type` varchar(15) NOT NULL default '',
  `field_inputwidth` smallint(3) default NULL,
  `field_inputheight` smallint(3) NOT NULL default '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(30) NOT NULL default '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL default '0',
  `listshow` tinyint(1) NOT NULL default '0',
  `listfilter` tinyint(1) default NULL,
  `search` tinyint(1) NOT NULL default '0',
  `allowview` varchar(255) NOT NULL default '',
  `allowpost` varchar(255) NOT NULL default '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL default '',
  `classid` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=582 ;

--
-- 转存表中的数据 `qb_fenlei_field`
--

INSERT INTO `qb_fenlei_field` (`id`, `mid`, `title`, `field_name`, `field_type`, `field_leng`, `orderlist`, `form_type`, `field_inputwidth`, `field_inputheight`, `form_set`, `form_value`, `form_units`, `form_title`, `mustfill`, `listshow`, `listfilter`, `search`, `allowview`, `allowpost`, `js_check`, `js_checkmsg`, `classid`) VALUES
(365, 66, '公司名称', 'bjgongsi', 'varchar', 255, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(366, 66, '联系人', 'bjlianxiren', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(364, 66, '工资', 'bjgongzi', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元/月', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(555, 115, '学历', 'jzxueli', 'varchar', 255, 6, 'select', 0, 0, '初中及以下\r\n高中/中专\r\n大专\r\n本科及以上', '', '', '', 0, 1, 1, 0, '', '', '', '', 31),
(554, 115, '性别', 'qzxingbie', 'varchar', 255, 7, 'radio', 0, 0, '1|男\r\n2|女', '1', '', '', 0, 0, 1, 0, '', '', '', '', 31),
(553, 115, '年龄', 'qznianling', 'varchar', 255, 8, 'text', 0, 0, '', '', '岁', '', 1, 0, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(552, 115, '姓名', 'xingming', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(551, 115, '求职意向', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '翻译\r\n演员\r\n客服\r\n充场/座谈会\r\n摄影\r\n网站\r\n会计\r\n模特\r\n礼仪\r\n设计\r\n家教\r\n其他', '翻译', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(550, 115, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(111, 4, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(545, 113, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(546, 113, '我会', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '魔术\r\n古玩鉴赏\r\n电器维修\r\n唱歌\r\n方言\r\n理财/金融\r\n数理化\r\n武术\r\n电工\r\n象棋/围棋\r\n中医\r\n平面设计\r\n服装设计\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(108, 4, '工资', 'sortid', 'varchar', 255, 10, 'text', 0, 0, '', '', '元/天', '', 1, 0, 0, 0, '', '', '', '', 31),
(540, 4, '公司名称', 'jzgsmc', 'varchar', 255, 9, 'text', 0, 0, '', '', '', '', 0, 1, 0, 0, '', '', '', '', 31),
(541, 112, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(542, 112, '性别', 'sortid', 'int', 10, 10, 'select', 0, 0, '1|男\r\n2|女', '', '', '', 0, 0, 1, 1, '', '', '', '', 31),
(543, 112, '年龄', 'nianling', 'varchar', 255, 9, 'text', 0, 0, '', '', '岁', '', 1, 1, 0, 0, '', '', '/^[0-9-]+$/', '', 31),
(544, 112, '现居住地', 'xianjuzhudi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(175, 22, '供求', 'sortid', 'int', 2, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(174, 22, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(173, 21, '价格', 'peijianjiage', 'varchar', 255, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(184, 24, '分类', 'dianqifenlei', 'varchar', 255, 9, 'select', 0, 0, '01|空调\r\n02|居家电器\r\n03|厨房电器\r\n04|影音电器\r\n05|冰箱/冷柜\r\n06|电视机\r\n07|洗衣机\r\n08|卫浴/护理电器\r\n09|其他', '01', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(183, 24, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(181, 23, '价格', 'jiajujiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 1, '', '', '/^[0-9.-]+$/', '', 31),
(182, 24, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(180, 23, '分类', 'jiajufeilei', 'varchar', 255, 9, 'select', 0, 0, '1|床/床垫\r\n2|桌/椅/凳\r\n3|柜橱架子\r\n4|沙发/茶几\r\n5|其他', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(178, 23, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(179, 23, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(177, 22, '价格', 'shumajiage', 'varchar', 255, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 2, '', '', '/^[0-9.-]+$/', '', 31),
(176, 22, '分类', 'shuamafenlei', 'varchar', 255, 9, 'select', 0, 0, '1|数码相机\r\n2|镜头/配件\r\n3|MP3/MP4\r\n4|游戏机及配件\r\n5|其他', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(362, 66, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(363, 66, '分类', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '按摩师\r\n保健师\r\n化妆师\r\n美发师\r\n美容师\r\n足疗师\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(139, 15, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(140, 15, '供求', 'sortid', 'int', 2, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(210, 15, '价格', 'shoujijiage', 'varchar', 255, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(171, 21, '供求', 'sortid', 'int', 2, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(143, 15, '品牌', 'shoujipinpai', 'varchar', 255, 9, 'select', 0, 0, '苹果/iPhone\r\n三星\r\nHTC\r\n诺基亚\r\n其他\r\n小米\r\n索尼\r\nMOTO\r\n华为\r\nLG\r\n中兴\r\n山寨/高仿机\r\n魅族\r\n联想\r\n酷派\r\nOPPO\r\n金立\r\n黑莓\r\n天语\r\n步步高', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(144, 16, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(145, 16, '供求', 'sortid', 'int', 2, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(146, 16, '价格', 'haomajiage', 'varchar', 255, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '', '', 31),
(172, 21, '配件', 'diannpeijian', 'varchar', 255, 9, 'select', 0, 0, '01|显示器\r\n02|主机\r\n03|移动硬盘\r\n04|键鼠\r\n05|硬盘\r\n06|内存\r\n07|光驱\r\n08|显卡\r\n09|CPU\r\n10|主板\r\n11|网卡\r\n12|网线\r\n13|机箱/电源\r\n14|其他电脑配件\r\n15|宽带\r\n16|modem\r\n17|路由器\r\n18|上网套餐', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(147, 16, '分类', 'shoujifenlei', 'varchar', 255, 8, 'radio', 0, 0, '1|移动\r\n2|联通\r\n3|电信\r\n4|其他 ', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(148, 17, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(149, 17, '供求', 'sortid', 'int', 2, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(150, 17, '品牌', 'bijibenpinpai', 'varchar', 255, 9, 'select', 0, 0, '联想\r\n惠普\r\n华硕\r\n戴尔\r\n其他\r\nIBM\r\n苹果\r\n宏碁\r\n神舟\r\n索尼\r\n东芝\r\nNEC\r\n富士通\r\n方正\r\n三星\r\n海尔\r\n清华同方\r\nGateway\r\n日立\r\n明基', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(151, 17, '价格', 'bijibenjiage', 'varchar', 255, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 1, 0, '', '', '', '', 31),
(153, 18, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(154, 18, '供求', 'sortid', 'int', 2, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(155, 18, '品牌', 'ipanpinpai', 'varchar', 255, 9, 'select', 0, 0, 'iPad\r\n其他\r\n三星\r\n联想\r\n索尼\r\n摩托罗拉\r\n优派\r\nKindleFire\r\ne途\r\n爱可视\r\nThinkPad\r\n华硕\r\n宏碁\r\n戴尔\r\nGoogle\r\n纽曼\r\n汉王\r\nHTC\r\n华为\r\n山寨/高仿', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(156, 18, '价格', 'ipanjiage', 'int', 10, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9-]+$/', '', 31),
(170, 21, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(158, 19, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(159, 19, '供求', 'sortid', 'int', 2, 11, 'radio', 0, 0, '1|转让\r\n2|求购', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(160, 19, '价格', 'cpjg', 'int', 10, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 1, 0, '', '', '/^[0-9-]+$/', '', 31),
(161, 19, '品牌', 'zuzhuangji', 'varchar', 255, 10, 'radio', 0, 0, '1|组装机\r\n2|品牌机\r\n3|其他', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(371, 67, '联系人', 'gglianxi', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(372, 68, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(373, 68, '分类', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '技术总监/经理\r\n技术支持/维护\r\n技术专员/助理\r\n软件工程师\r\n程序员\r\n硬件工程师\r\n质量工程师\r\n测试员\r\n系统架构师\r\n数据库管理/DBA\r\n游戏设计/开发\r\n网页设计/制作\r\n语音/视频/图形\r\n项目经理/主管\r\n产品经理/专员\r\n网站运营\r\n网站编辑\r\n网站策划\r\n网络管理员\r\n网络与信息安全工程师\r\n通信技术工程师\r\n实施工程师', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(370, 67, '公司名称', 'gggongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(369, 67, '工资', 'gggongzi', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元/月', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(368, 67, '类别', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '平面设计\r\n网页设计\r\n室内设计\r\n程序员\r\n网管\r\n广告设计\r\n摄影师\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(185, 24, '价格', 'dianqijiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 1, '', '', '', '', 31),
(186, 25, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(187, 25, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(188, 25, '分类', 'riyongfenlei', 'varchar', 255, 9, 'select', 0, 0, '1|居家用品\r\n2|化妆品\r\n3|其他', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(189, 25, '价格', 'riyongjiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(190, 26, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(191, 26, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(192, 26, '分类', 'nongchanpinfenlei', 'varchar', 255, 9, 'select', 0, 0, '1|休闲/保健食品\r\n2|茶叶/饮品\r\n3|粮油/蔬果\r\n4|肉蛋禽/生鲜\r\n5|苗木/种子\r\n6|其他', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(193, 26, '价格', 'nongchanpinjiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9-]+$/', '', 31),
(194, 27, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(195, 27, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(196, 27, '分类', 'bangongfenlei', 'varchar', 255, 9, 'select', 0, 0, '1|办公文具\r\n2|打印机\r\n3|复印/扫描/投影\r\n4|其他', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(197, 27, '价格', 'bangongjiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9-]+$/', '', 31),
(211, 31, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(198, 28, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(199, 28, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(200, 28, '分类', 'shouchangfenlei', 'varchar', 255, 9, 'select', 0, 0, '1|珠宝/玉器/名石\r\n2|古玩\r\n3|钱币/票证\r\n4|书画\r\n5|十字绣\r\n6|其他', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(201, 28, '价格', 'shoucangjiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(202, 29, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(203, 29, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(204, 29, '分类', 'fuzhuangfenlei', 'varchar', 255, 9, 'select', 0, 0, '1|女装\r\n2|箱包\r\n3|男装\r\n4|鞋子\r\n5|配饰\r\n6|手表\r\n7|其他', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(205, 29, '价格', 'fuzhuangjiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(206, 30, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(207, 30, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(208, 30, '分类', 'muyingfenlei', 'varchar', 255, 9, 'select', 0, 0, '1|母婴用品\r\n2|玩具\r\n3|童车童床\r\n4|食品/奶粉\r\n5|婴孩服饰\r\n6|其他', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(209, 30, '价格', 'muyingjiage', 'varchar', 255, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(212, 31, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(213, 31, '分类', 'shoubiaofenlei', 'varchar', 255, 9, 'select', 0, 0, '浪琴\r\n卡西欧\r\n天梭\r\n欧米茄\r\n劳力士\r\n斯沃琪\r\n卡地亚\r\n西铁城\r\n海鸥\r\n罗西尼\r\n精工\r\n飞亚达\r\n依波\r\n项链\r\n吊坠\r\n耳饰\r\n手链\r\n戒指\r\n其他 ', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(214, 31, '价格', 'shoubiaojiage', 'varchar', 255, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(215, 32, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(216, 32, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(217, 32, '分类', 'xiezifenlei', 'varchar', 255, 9, 'select', 0, 0, '旅行箱/拉杆箱\r\n钱包\r\n背包/双肩包\r\n书包\r\n手提包\r\n单肩包\r\n电脑包\r\n登山包\r\n公文包\r\n化妆包\r\n皮包\r\n篮子\r\n其他包\r\n运动鞋\r\n皮鞋/皮靴\r\n高跟鞋\r\n休闲鞋\r\n凉鞋\r\n板鞋\r\n登山鞋\r\n雪地靴\r\n拖鞋\r\n其他鞋类', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(218, 32, '价格', 'xiebaojiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(219, 33, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(220, 33, '类别', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(221, 33, '分类', 'xunifenlei', 'varchar', 255, 9, 'select', 0, 0, '账号/装备/代练\r\n充值/点卡/金币\r\nQQ号\r\n其他虚拟物品', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(222, 33, '价格', 'xunijiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(223, 34, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(224, 34, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(225, 34, '分类', 'ytlfl', 'varchar', 255, 9, 'select', 0, 0, '运动器材\r\n图书/音像制品\r\n乐器\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(226, 34, '价格', 'ytljg', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 0, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(227, 35, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(228, 35, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(229, 35, '分类', 'mpkjfl', 'varchar', 255, 9, 'select', 0, 0, '演出/电影\r\n健身/游泳\r\n旅游/景点/酒店\r\n美食/面包\r\n超市/订报\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(230, 35, '价格', 'mpjg', 'varchar', 255, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(231, 36, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(232, 36, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(233, 36, '分类', 'wtypfl', 'varchar', 255, 9, 'select', 0, 0, '户外用品\r\n健身器材\r\n文教用品\r\n球类用品\r\n乐器\r\n游泳用品\r\n瑜伽用品\r\n钓鱼用具\r\n各类棋牌\r\n其他文体用品 ', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(234, 36, '价格', 'wtypjg', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(235, 37, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(236, 37, '种类', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '台式电脑\r\n笔记本电脑\r\n手机通讯\r\n家用电器\r\n家具装饰\r\n办公耗材\r\n电子数码\r\n二手设备/机械\r\n废旧物品\r\n礼品回收\r\n贵金属回收\r\n奢侈品回收\r\n库存积压\r\n金属回收\r\n纺织皮革\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(237, 37, '价格', 'huishoujiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9-]+$/', '', 31),
(238, 38, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(239, 38, '供求', 'sortid', 'varchar', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(240, 38, '价格', 'qitajiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(241, 39, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(242, 39, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(243, 39, '分类', 'shebeifenlei', 'varchar', 255, 9, 'select', 0, 0, '工程机械\r\n仪器仪表\r\n发电/化工设备\r\n食品机械\r\n纺织/农业/木工\r\n机床\r\n印刷/塑料机械\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(244, 39, '价格', 'shebeijiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(245, 40, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(246, 40, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(247, 40, '品牌', 'qichepinpai', 'varchar', 255, 9, 'select', 0, 0, '大众\r\n别克\r\n奥迪\r\n奇瑞\r\n现代\r\n夏利\r\n铃木\r\n日产\r\n奔驰\r\n本田\r\n雪铁龙\r\n吉利\r\n丰田\r\n宝马\r\n长安\r\n雪佛兰\r\n马自达\r\n比亚迪\r\n福特\r\n哈飞\r\n起亚\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(248, 40, '车型', 'chexing', 'varchar', 255, 8, 'select', 0, 0, 'MPV/商务车\r\nSUV/越野车\r\n跑车\r\n中型车\r\n豪华车\r\n小型车\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(249, 40, '上牌年份', 'nianfen', 'varchar', 255, 7, 'select', 0, 0, '2013年\r\n2012年\r\n2011年\r\n2010年\r\n2009年\r\n2008年\r\n2007年\r\n2006年\r\n2005年\r\n2004年\r\n2003年\r\n2002年\r\n2001年\r\n2000年\r\n00年前', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(250, 40, '行驶里程', 'licheng', 'mediumtext', 0, 6, 'text', 0, 0, '', '', '万公里', '', 1, 0, 0, 0, '', '', '/^[0-9-]+$/', '', 31),
(251, 40, '价格', 'chejiage', 'varchar', 255, 5, 'text', 0, 0, '', '', '万元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(252, 41, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(253, 41, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(254, 41, '类型', 'huocheleixing', 'varchar', 255, 9, 'select', 0, 0, '挖掘机\r\n厢式货车\r\n叉车\r\n自卸车\r\n装载机\r\n平板车\r\n半挂车\r\n吊车\r\n搅拌车\r\n油罐车\r\n水泥罐车\r\n压路机\r\n推土机\r\n洒水车/清扫车\r\n其他货车', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(255, 41, '品牌', 'huochepinpai', 'varchar', 255, 8, 'select', 0, 0, '东风\r\n威铃\r\n红岩\r\n悍威\r\n高栏\r\n江淮\r\n东风天龙\r\n凯马\r\n赛龙\r\n康明斯\r\n天龙\r\n斯太尔\r\n解放\r\n豪沃\r\n新大威\r\n奥龙\r\n德龙\r\n瑞沃奥威\r\n时代金刚\r\n欧曼\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(256, 41, '价格', 'huochejiage', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '万元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(257, 42, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(258, 42, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 0, 0, 1, 1, '', '', '', '', 31),
(259, 42, '类型', 'mbclx', 'varchar', 255, 9, 'select', 0, 0, '大客车\r\n中巴车\r\n面包车', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(260, 42, '品牌', 'mbcpp', 'varchar', 255, 8, 'select', 0, 0, '金杯\r\n哈飞\r\n长安\r\n五菱\r\n东风小康\r\n福田\r\n金龙\r\n依维柯\r\n宇通\r\n江淮\r\n松花江\r\n江铃\r\n丰田\r\n开瑞\r\n全顺\r\n佳宝\r\n昌河\r\n东南\r\n少林\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(261, 42, '上牌年份', 'spnf', 'varchar', 255, 7, 'select', 0, 0, '2013年\r\n2012年\r\n2011年\r\n2010年\r\n2009年\r\n2008年\r\n2007年\r\n2006年\r\n2005年\r\n2004年\r\n2003年\r\n2002年\r\n2001年\r\n2000年\r\n00年前', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(262, 42, '行驶里程', 'mbcxslc', 'mediumtext', 0, 6, 'text', 0, 0, '', '', '万公里', '', 1, 0, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(263, 42, '价格', 'mbcjg', 'varchar', 255, 5, 'text', 0, 0, '', '', '万元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(264, 43, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(265, 43, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(266, 43, '类型', 'tuolajileixing', 'varchar', 255, 9, 'select', 0, 0, '收割机\r\n拖拉机\r\n旋耕/微耕机\r\n插秧机\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(267, 43, '品牌', 'tljpp', 'varchar', 255, 8, 'select', 0, 0, '常林\r\n常发\r\n五征\r\n四方\r\n黄金海马\r\n沭河\r\n约翰迪尔\r\n福田雷沃\r\n东风\r\n纽荷兰\r\n时风\r\n东方红\r\n其他拖拉机', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(268, 43, '价格', 'tljjg', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '万元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(269, 44, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(270, 44, '车型', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '现代\r\n奔驰\r\n宝马\r\n奥迪\r\n大众\r\n丰田\r\n长安\r\n本田\r\n起亚\r\n雪佛兰\r\n保时捷\r\n北汽\r\n东风\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(271, 44, '价格', 'xinchejiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '万元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(272, 45, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(273, 45, '类型', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '清洁保养\r\nGPS\r\n内饰\r\n影音电器\r\n坐垫/脚垫\r\n外饰\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(274, 45, '价格', 'qcypjg', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(275, 46, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(276, 46, '类型', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '发动机配件\r\n汽车底盘\r\n车身附件\r\n电子电器\r\n视听设备\r\n养护用品\r\n汽车用品\r\n拆车件\r\n改装配件 ', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(277, 46, '价格', 'cqpjjge', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(278, 47, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(279, 47, '类型', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '经济轿车\r\n中级轿车\r\n高档轿车\r\n商务车\r\n越野车\r\n面包车\r\n客车/中巴\r\n货车/皮卡\r\n厢式货车 ', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(280, 47, '价格', 'shougoujiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '万元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(281, 48, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(282, 48, '类别', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '过户\r\n汽车年检\r\n代办上牌\r\n违章代办\r\n异地验车\r\n外迁提档\r\n进京证', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(283, 48, '价格', 'guohujiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(284, 49, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(285, 49, '价格', 'sortid', 'varchar', 3, 10, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(286, 50, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(287, 50, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '带司机租车\r\n商务租车\r\n旅游租车\r\n婚车\r\n豪华车\r\n货车\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(288, 50, '价格', 'zuchejiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(289, 51, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(290, 51, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 0, 0, 1, 1, '', '', '', '', 31),
(291, 51, '分类', 'mtcfl', 'varchar', 255, 9, 'select', 0, 0, '踏板\r\n跑车\r\n轻骑\r\n越野车\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(292, 51, '品牌', 'mtcpp', 'varchar', 255, 8, 'select', 0, 0, '本田\r\n雅马哈\r\n铃木\r\n宗申\r\n踏板\r\n川崎\r\n福喜\r\n轻骑\r\n建设\r\n力帆\r\n钱江\r\n哈雷\r\n高赛\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(293, 51, '价格', 'mtcjg', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(294, 52, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(295, 52, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(296, 52, '分类', 'ddcfl', 'varchar', 255, 9, 'select', 0, 0, '电动自行车\r\n电动摩托\r\n电动三轮\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(297, 52, '品牌', 'ddcpp', 'varchar', 255, 8, 'select', 0, 0, '新日\r\n立马\r\n绿源\r\n爱玛\r\n雅迪\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(298, 52, '价格', 'ddcjg', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(299, 53, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(300, 53, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(301, 53, '类型', 'zxclx', 'varchar', 255, 9, 'select', 0, 0, '山地车\r\n普通车\r\n折叠车\r\n公路车\r\n休闲车\r\n三轮车\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(302, 53, '品牌', 'zxcpp', 'varchar', 255, 8, 'select', 0, 0, '英克莱\r\n捷马\r\n美利达\r\n喜德盛\r\n富士达\r\n永久\r\n凤凰\r\n飞鸽\r\n飞跃\r\n捷安特\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(303, 53, '价格', 'zxcjg', 'varchar', 255, 7, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(304, 54, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(305, 54, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|出租\r\n2|求租', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(306, 54, '租房类型', 'zufangleixing', 'varchar', 255, 9, 'select', 0, 0, '整套出租\r\n单间出租\r\n床位出租', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(307, 54, '房型', 'fangxing', 'varchar', 255, 8, 'select', 0, 0, '1室\r\n2室\r\n3室\r\n4室\r\n4室以上', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(308, 54, '楼层', 'louceng', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '楼', '', 1, 0, 0, 0, '', '', '', '', 31),
(309, 54, '租金', 'zujin', 'mediumtext', 0, 6, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '', '', 31),
(310, 55, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(311, 55, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|出租\r\n2|求租', '1', '', '', 0, 0, 1, 1, '', '', '', '', 31),
(312, 55, '分类', 'rizufenlei', 'varchar', 255, 9, 'select', 0, 0, '家庭旅馆\r\n高档公寓\r\n宾馆酒店\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(313, 55, '出租形式', 'chuzuxingshi', 'varchar', 255, 8, 'radio', 0, 0, '1|床位\r\n2|单间\r\n3|整套', '1', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(314, 55, '租金', 'rizuzujin', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(315, 56, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(316, 56, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|出售\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(317, 56, '装修情况', 'zhuangxiuqingkuang', 'varchar', 255, 9, 'select', 0, 0, '毛坯房\r\n简单装修\r\n中等装修\r\n精装修\r\n豪华装修', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(318, 56, '房型', 'ershoufangfangxing', 'varchar', 255, 8, 'select', 0, 0, '1室0厅1卫\r\n1室1厅1卫\r\n2室1厅1卫\r\n2室2厅1卫\r\n2室2厅2卫\r\n3室1厅1卫\r\n3室2厅1卫\r\n3室2厅2卫\r\n4室及以上', '', '', '', 1, 1, 1, 0, '', '', '', '', 31),
(319, 56, '面积', 'mianji', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '平米', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(320, 56, '价格', 'ershoufangjiage', 'varchar', 255, 5, 'text', 0, 0, '', '', '万元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(321, 56, '楼层', 'esflc', 'mediumtext', 0, 6, 'text', 0, 0, '', '', '楼', '', 1, 0, 0, 0, '', '', '/^[0-9-]+$/', '', 31),
(334, 60, '分类', 'fenlei', 'varchar', 255, 9, 'select', 0, 0, '纯写字楼\r\n商务中心\r\n商住楼\r\n园区办公\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(333, 60, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|出售\r\n2|求购', '1', '', '', 0, 0, 1, 1, '', '', '', '', 31),
(332, 60, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(326, 59, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(327, 59, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|出售\r\n2|求购', '1', '', '', 0, 0, 1, 1, '', '', '', '', 31),
(328, 59, '小区名称', 'xiaoqumingcheng', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(329, 59, '房型', 'xinfangfangxing', 'varchar', 255, 8, 'select', 0, 0, '1室0厅1卫\r\n1室1厅1卫\r\n2室1厅1卫\r\n2室2厅1卫\r\n2室2厅2卫\r\n3室1厅1卫\r\n3室2厅1卫\r\n3室2厅2卫\r\n4室及以上', '', '', '', 1, 1, 1, 0, '', '', '', '', 31),
(330, 59, '面积', 'xinfangmianji', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '平米', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(331, 59, '价格', 'xinfangjiage', 'varchar', 255, 6, 'text', 0, 0, '', '', '万元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(335, 60, '面积', 'xieziloumianji', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '平米', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(336, 60, '价格', 'xieziloujiage', 'mediumtext', 0, 6, 'text', 0, 0, '', '', '万元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(337, 60, '楼宇名称', 'louyumingcheng', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(338, 61, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(339, 61, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|出售\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(340, 61, '分类', 'shangpufenlei', 'varchar', 255, 9, 'select', 0, 0, '购物中心\r\n临街店铺\r\n摊位/柜台\r\n写字楼底商\r\n住宅底商\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(341, 61, '面积', 'shangpumianj', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '平米', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(342, 61, '价格', 'shangpujiage', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '万元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(343, 62, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(344, 62, '类别', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 0, 0, 1, 1, '', '', '', '', 31),
(345, 62, '分类', 'dianpufenlei', 'varchar', 255, 9, 'select', 0, 0, '餐饮美食\r\n超市零售\r\n服饰鞋包\r\n空铺转让\r\n美容美发\r\n生活服务\r\n休闲娱乐\r\n酒店宾馆\r\n电子通讯\r\n专柜转让\r\n汽修美容\r\n教育培训\r\n医药保健\r\n家居建材\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(346, 62, '面积', 'dianpumianji', 'varchar', 255, 8, 'text', 0, 0, '', '', '平米', '', 1, 1, 0, 0, '', '', '', '', 31),
(347, 62, '转让费', 'zhuanrangfei', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '元', '', 1, 0, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(348, 62, '租金', 'dianpuzujin', 'mediumtext', 0, 6, 'text', 0, 0, '', '', '元/月', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(349, 63, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(350, 63, '供求', 'sortid', 'int', 3, 10, 'radio', 0, 0, '1|转让\r\n2|求购', '1', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(351, 63, '类型', 'cctlx', 'varchar', 255, 9, 'checkbox', 0, 0, '厂房出租\r\n厂房出售\r\n仓库出租\r\n仓库出售\r\n土地出租\r\n土地出售\r\n其他出租\r\n其他出售', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(352, 63, '价格', 'changfangjiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元/平米/天', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(353, 63, '面积', 'changfangmianji', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '平米', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(354, 64, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(355, 64, '招聘会时间', 'sortid', 'varchar', 255, 10, 'text', 0, 0, '', '8月8日', '', '', 1, 1, 0, 1, '', '', '', '', 31),
(356, 64, '举办场馆', 'jubanchangguan', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(357, 65, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(358, 65, '工资', 'sortid', 'varchar', 255, 10, 'text', 0, 0, '', '', '元/月', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(359, 65, '公司名称', 'gongzuomingcheng', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(360, 65, '联系人', 'lianxiren', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(367, 67, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(374, 68, '工资', 'itgongzi', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元/月', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(375, 68, '公司', 'itgongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(376, 69, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(377, 69, '分类', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '教师/助教\r\n家教\r\n幼教\r\n培训师/讲师\r\n培训策划\r\n培训助理\r\n教学/教务管理\r\n教育产品开发\r\n学术研究/科研\r\n招生/课程顾问\r\n校长\r\n野外拓展训练师', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(378, 69, '公司', 'jygongsi', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(379, 69, '工资', 'jygongzi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元/月', '', 1, 1, 0, 0, '', '', '', '', 31),
(380, 70, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(381, 70, '分类', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '会计\r\n财务\r\n出纳\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(382, 70, '工资', 'cwgongzi', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元/月', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(383, 70, '公司名称', 'cwgongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(384, 71, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(385, 71, '分类', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '普工\r\n安装/维修工\r\n焊工\r\n电工\r\n装卸/搬运工\r\n建筑/装修工\r\n车工/铣工/钳工\r\n缝纫/制衣工\r\n模具工\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(386, 71, '工作时间', 'grgzsj', 'varchar', 255, 9, 'select', 0, 0, '做一休一\r\n做五休二\r\n做二休一\r\n做六休一\r\n其他', '', '', '', 1, 0, 1, 0, '', '', '', '', 31),
(387, 71, '工资', 'grgongzi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元/月', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(388, 71, '公司', 'grgognsi', 'varchar', 255, 7, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(389, 72, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(390, 72, '分类', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '英语翻译\r\n日语翻译\r\n韩语翻译\r\n法语翻译\r\n俄语翻译\r\n德语翻译\r\n西班牙语翻译\r\n意大利语翻译\r\n葡萄牙语翻译\r\n阿拉伯语翻译\r\n小语种翻译', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(391, 72, '工资', 'fanyigongzi', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元/月', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(392, 72, '公司名称', 'fygs', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(393, 73, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(394, 73, '分类', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '销售专员\r\n电话销售\r\n市场专员\r\n营销经理\r\n网络销售\r\n跟单员/助理\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(395, 73, '工资', 'xsgongzi', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元/月', '', 1, 1, 0, 0, '', '', '', '', 31),
(396, 73, '公司', 'xsgongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(397, 74, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(398, 74, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '购物\r\n休闲\r\n娱乐\r\n论坛\r\n新闻\r\n交通地图\r\n游戏\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(399, 74, '网站名', 'site', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(400, 74, '网址', 'wangzhi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '/^http:\\/\\//', '', 31),
(401, 75, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(402, 75, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '商务礼品\r\n礼品定制', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(403, 75, '价格', 'lipinjiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(404, 75, '公司名称', 'lipingongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 0, 1, 0, 0, '', '', '', '', 31),
(405, 76, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(406, 76, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '鲜花\r\n绿植/盆栽\r\n园艺用品', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(407, 76, '商户名称', 'shmc', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(408, 76, '价格', 'xhjg', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(409, 77, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(410, 77, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '笔译\r\n口译\r\n同声传译\r\n速记', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(411, 77, '公司名称', 'fygsmc', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 0, 1, 0, 0, '', '', '', '', 31),
(412, 78, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(413, 78, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '合同纠纷\r\n债务纠纷\r\n房产纠纷\r\n交通事故\r\n知识产权\r\n离婚\r\n刑事辩护', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(414, 78, '公司名称', 'lvshihang', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(415, 79, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(416, 79, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '平面设计\r\n活动策划\r\n网页设计\r\n广告策划', '', '', '', 0, 0, 1, 1, '', '', '', '', 31),
(417, 79, '报价', 'baojia', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 0, 1, 0, 0, '', '', '', '', 31),
(418, 79, '公司名称', 'shejigongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 0, 1, 0, 0, '', '', '', '', 31),
(419, 80, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(420, 80, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '印刷\r\n喷绘\r\n名片\r\n制卡\r\n易拉宝\r\n灯箱', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(421, 80, '价格', 'yinshuajiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(422, 80, '公司', 'yinshuagongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(423, 81, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(424, 81, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '庆典公司\r\n乐队演出\r\n场地布置\r\n礼仪模特\r\n灯光音响\r\n司仪\r\n化妆', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(425, 81, '价格', 'qingdianjiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(426, 81, '公司名称', 'qingdiangongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(427, 82, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(428, 82, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '机械设备租赁\r\n办公设备租赁\r\n庆典会展租赁\r\n服装租赁\r\n家具租赁\r\n空调租赁', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(429, 82, '价格', 'zulinjiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '', '', 31),
(430, 82, '公司名称', 'zulingongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(431, 83, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(432, 83, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '快递\r\n行李托运\r\n货运\r\n仓储\r\n进出口报关', '', '', '', 0, 0, 1, 1, '', '', '', '', 31),
(433, 83, '价格', 'kuaidijiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 0, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(434, 83, '公司名称', 'kuaidigongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 0, 1, 0, 0, '', '', '', '', 31),
(435, 84, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(436, 84, '价格', 'sortid', 'varchar', 255, 10, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '', '', 31),
(437, 84, '公司名称', 'gsmc', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(438, 85, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(439, 85, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '会计\r\n审计', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(440, 85, '费用', 'feiyong', 'varchar', 255, 9, 'text', 0, 0, '', '', '元', '', 0, 1, 0, 0, '', '', '', '', 31),
(441, 85, '公司', 'kuaijigongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 0, 1, 0, 0, '', '', '', '', 31),
(442, 86, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(443, 86, '类别', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '公司注册\r\n工商年检\r\n海外公司注册\r\n商标注册\r\n香港公司注册\r\n专利注册\r\n专项审批\r\n公司转让', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(444, 86, '报价', 'gszcbj', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '', '', 31),
(445, 86, '公司名称', 'gszcgs', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(446, 87, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(447, 87, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '企业/个体户贷款\r\n无抵押贷款\r\n房产抵押贷款\r\n汽车抵押贷款\r\n买房贷款\r\n买车贷款', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(448, 87, '公司名称', 'danbaogongsi', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(449, 88, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(450, 88, '服务内容', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '产品代理\r\n餐饮加盟\r\n服装箱包\r\n美容保健\r\n建材家居\r\n教育培训\r\n礼品饰品\r\n农业养殖\r\n干洗加盟\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(451, 88, '公司名称', 'zsgs', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(452, 89, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(453, 89, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '机票\r\n签证\r\n移民', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(454, 89, '公司名称', 'qianzhenggognsi', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(455, 90, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(456, 90, '类别', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '青年旅舍\r\n星级酒店\r\n经济型酒店\r\n酒店用品\r\n度假村\r\n宾馆', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(457, 90, '价格', 'jiudianjiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(458, 90, '酒店名字', 'jiudianmingzi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(459, 91, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(460, 91, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '按摩\r\n健身\r\n会所\r\n足疗\r\n瑜伽\r\n洗浴\r\nKTV\r\n酒吧\r\n桌游\r\n演唱会\r\n演出票务\r\n电影票', '按摩', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(461, 91, '价格', 'yulejiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(462, 91, '商户名称', 'xiuxianshanghu', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(463, 92, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(464, 92, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '周边游\r\n农家乐\r\n旅行社\r\n出国游\r\n导游\r\n温泉\r\n港澳台游', '港澳台游', '', '', 1, 0, 1, 1, '', '', '', '', 31);
INSERT INTO `qb_fenlei_field` (`id`, `mid`, `title`, `field_name`, `field_type`, `field_leng`, `orderlist`, `form_type`, `field_inputwidth`, `field_inputheight`, `form_set`, `form_value`, `form_units`, `form_title`, `mustfill`, `listshow`, `listfilter`, `search`, `allowview`, `allowpost`, `js_check`, `js_checkmsg`, `classid`) VALUES
(465, 92, '旅行社', 'lvxingshe', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(466, 93, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(467, 93, '类别', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '送水\r\n宴会外卖\r\n快餐\r\n承包食堂\r\n食材配送', '送水', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(468, 93, '公司', 'canguanming', 'varchar', 255, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(469, 94, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(470, 94, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '管道疏通\r\n马桶疏通\r\n下水道疏通\r\n化粪池疏通', '管道疏通', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(471, 94, '价格', 'shutongjiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元/次', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(472, 94, '公司名称', 'shutonggongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(473, 95, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(474, 95, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '马桶维修\r\n水电维修\r\n防水补漏\r\n家具维修\r\n淋浴房维修\r\n沙发维修\r\n门窗维修\r\n其他', '防水补漏', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(475, 95, '价格', 'weixiujiage', 'varchar', 255, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(476, 95, '公司名称', 'weixiugongsi', 'varchar', 255, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(477, 96, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(478, 96, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '电脑维修\r\n笔记本维修\r\n数据恢复\r\nIT外包\r\n网络布线\r\n打印机维修\r\n传真机维修', '电脑维修', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(479, 96, '价格', 'diannaojiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元/次', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(480, 96, '公司名称', 'diannaogongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(481, 97, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(482, 97, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '空调维修\r\n空调移机\r\n热水器维修冰\r\n箱维修洗\r\n衣机维修\r\n电视机维修\r\n饮水机维修', '空调维修', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(483, 97, '价格', 'jdwxjg', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(484, 97, '公司名称', 'jdwxgs', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(485, 98, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(486, 98, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '手机回收\r\n电器回收\r\n电脑回收\r\n数码回收\r\n礼品回收\r\n奢侈品回收\r\n金银回收\r\n金属回收\r\n电子回收\r\n建筑废料\r\n家具回收\r\n办公用品回收\r\n库存积压\r\n设备回收\r\n电池回收\r\n塑料回收\r\n玻璃回收\r\n废纸回收\r\n纺织皮革\r\n废橡胶回收\r\n服装衣帽\r\n药品回收', '手机回收', '', '', 1, 1, 1, 1, '', '', '', '', 31),
(487, 99, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(488, 99, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '日常保洁\r\n开荒保洁\r\n地毯清洗\r\n擦玻璃\r\n抽油烟机清洗\r\n外墙清洗\r\n干洗', '日常保洁', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(489, 99, '价格', 'baojiejiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元/次', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(490, 99, '公司名称', 'baojiegongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(491, 100, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(492, 100, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '保姆\r\n钟点工\r\n住家阿姨\r\n育婴师\r\n月嫂\r\n照顾孩子\r\n照顾老人\r\n做饭\r\n护工', '保姆', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(493, 100, '公司名称', 'yuesaogongsi', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(494, 101, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(495, 101, '类别', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '理财产品\r\n期货\r\n股票\r\n证券\r\n信用卡\r\n黄金\r\n基金\r\n保险\r\n外汇', '理财产品', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(496, 101, '公司名称', 'touzigongsi', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(497, 102, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(498, 102, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '门窗\r\n钢材\r\n五金\r\n涂料\r\n地板\r\n玻璃\r\n吊顶\r\n窗帘\r\n油漆\r\n瓷砖\r\n墙纸\r\n水泥\r\n灯具\r\n卫浴', '钢材', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(499, 102, '价格', 'jiancaijiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(500, 102, '公司名称', 'jiancaigongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(501, 103, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(502, 103, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '新房装修\r\n办公室装修\r\n二手房装修\r\n店铺装修\r\n厂房装修\r\n拆旧\r\n其他', '新房装修', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(503, 103, '价格', 'zhuangxiujiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(504, 103, '公司名称', 'zhuangxiugongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(505, 104, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(506, 104, '类别', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '瘦身\r\n美容\r\nspa\r\n丰胸\r\n脱毛\r\n美发\r\n美甲', '瘦身/美容', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(507, 104, '价格', 'meirongjiage', 'varchar', 255, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(508, 104, '公司', 'meironggongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(509, 105, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(510, 105, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '商业摄影\r\n婚纱摄影\r\n儿童摄影\r\n摄像\r\n写真\r\n艺术照', '写真/艺术照', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(511, 105, '价格', 'sheyingjiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '', '', 31),
(512, 105, '公司', 'sheyinggongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(513, 106, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(514, 106, '服务内容', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '婚庆公司\r\n新娘化妆\r\n婚礼跟拍\r\n婚车租赁\r\n司仪\r\n婚纱礼服\r\n婚礼小商品\r\n婚宴\r\n婚戒首饰\r\n喜糖', '婚庆公司', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(515, 106, '价格', 'hunqingjiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(516, 106, '婚庆公司', 'hunqinggongsi', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(517, 107, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(518, 107, '培训类型', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '技工\r\n会计\r\n美妆\r\n建造师\r\n厨师\r\n教师\r\n心理咨询\r\n人力资源\r\n公务员\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(519, 107, '课程学费', 'jnxf', 'varchar', 255, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(520, 107, '上课地点', 'jbskdd', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(521, 107, '学校名称', 'jnxxmc', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(522, 108, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(523, 108, '培训类型', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '自考\r\n本/专科教育\r\n网络/远程教育\r\n在职研究生\r\n成人高考\r\n出国留学\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(524, 108, '课程学费', 'xlxf', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(525, 108, '上课地点', 'xlskdd', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(526, 108, '学校名称', 'xlxxmc', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(527, 109, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(528, 109, '课程学费', 'sortid', 'varchar', 255, 10, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(529, 109, '上课地点', 'qtskdd', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(530, 109, '学校名称', 'qtxxmc', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(531, 110, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(532, 110, '培训类型', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '高中\r\n初中\r\n小学\r\n小升初\r\n其他', '高中/初中', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(533, 110, '课程学费', 'zxxxf', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元/小时', '', 1, 1, 0, 0, '', '', '/^[0-9-]+$/', '', 31),
(534, 110, '上课地点', 'zxskdd', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(535, 110, '学校名称', 'zxxxmc', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(536, 111, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(537, 111, '培训类型', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '舞蹈\r\n体育\r\n书画\r\n声乐\r\n钢琴\r\n其他', '体育', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(538, 111, '课程学费', 'wykcxf', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(539, 111, '学校名称', 'wyxxmc', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(547, 113, '我想学', 'woxiangxue', 'varchar', 255, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(548, 114, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(549, 114, '联系人', 'sortid', 'varchar', 255, 10, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(556, 116, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(557, 116, '求职意向', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '快递员\r\n送货员\r\n保安\r\n编辑\r\n前台\r\n收银员\r\n店长\r\n摄影/影视\r\n广告/美工/设计\r\n保健按摩\r\nKTV/酒吧\r\n美容美发\r\n网管\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(558, 116, '姓名', 'qizhixingming', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '', '', 1, 1, 0, 0, '', '', '', '', 31),
(559, 116, '性别', 'qiuzhixingbie', 'varchar', 255, 8, 'radio', 0, 0, '1|男\r\n2|女', '', '', '', 1, 0, 0, 0, '', '', '', '', 31),
(560, 116, '年龄', 'qiuzhinianling', 'mediumtext', 0, 7, 'text', 0, 0, '', '', '岁', '', 1, 0, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(561, 116, '学历', 'qiuzhixueli', 'varchar', 255, 6, 'select', 0, 0, '初中及以下\r\n高中/中专\r\n大专\r\n本科及以上', '', '', '', 1, 1, 1, 0, '', '', '', '', 31),
(562, 117, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(563, 117, '品种', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '泰迪\r\n藏獒\r\n德牧\r\n金毛\r\n雪橇犬\r\n拉布拉多\r\n比熊\r\n萨摩耶\r\n博美\r\n边牧\r\n贵宾\r\n哈士奇\r\n吉娃娃\r\n罗威纳\r\n松狮\r\n马犬\r\n高加索\r\n雪纳瑞\r\n比特\r\n格力犬\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(564, 117, '公母', 'gongmu', 'varchar', 255, 9, 'radio', 0, 0, '公\r\n母', '', '', '', 1, 1, 1, 0, '', '', '', '', 31),
(565, 117, '价格', 'gougoujiage', 'mediumtext', 0, 8, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '', '', 31),
(566, 118, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(567, 118, '分类', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '波斯猫\r\n加菲猫\r\n折耳猫\r\n短毛猫\r\n暹罗猫\r\n豹猫\r\n蓝猫\r\n金吉拉猫\r\n其他', '', '', '', 0, 0, 1, 1, '', '', '', '', 31),
(568, 118, '价格', 'maomaojiage', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(569, 119, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(570, 119, '品种', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '观赏鱼\r\n玩赏鸟\r\n奇石盆景\r\n其他小宠', '', '', '', 0, 0, 1, 1, '', '', '', '', 31),
(571, 119, '价格', 'hnycjg', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(572, 120, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(573, 120, '类型', 'sortid', 'varchar', 255, 10, 'select', 0, 0, '狗\r\n猫\r\n兔\r\n鼠\r\n鸟\r\n水族\r\n其他', '', '', '', 1, 1, 1, 1, '', '', '', '', 31),
(574, 121, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(575, 121, '分类', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '狗粮\r\n狗用品\r\n猫粮\r\n猫用品\r\n宠物玩具\r\n宠物服饰\r\n其他', '', '', '', 1, 0, 1, 1, '', '', '', '', 31),
(576, 121, '价格', 'cwypjg', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31),
(577, 122, '详情', 'content', 'mediumtext', 0, 0, 'textarea', 400, 200, '', '', '', '', 0, 0, 0, 0, '', '', '', '', 31),
(578, 122, '类别', 'sortid', 'varchar', 255, 10, 'checkbox', 0, 0, '寄养\r\n配种\r\n托运\r\n医院\r\n美容\r\n训练\r\n其他', '', '', '', 1, 1, 1, 1, '', '', '', '', 31),
(579, 122, '价格', 'cwfwjg', 'mediumtext', 0, 9, 'text', 0, 0, '', '', '元', '', 1, 1, 0, 0, '', '', '/^[0-9.-]+$/', '', 31);

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_friendlink`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_friendlink` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` int(7) NOT NULL default '0',
  `name` varchar(30) NOT NULL default '',
  `url` varchar(150) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` varchar(255) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `ifhide` tinyint(1) NOT NULL default '0',
  `iswordlink` tinyint(1) default NULL,
  `hits` tinyint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `uid` int(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '1',
  `endtime` int(10) NOT NULL default '0',
  `city_id` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `yz` (`yz`,`endtime`,`ifhide`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=54 ;

--
-- 转存表中的数据 `qb_fenlei_friendlink`
--

INSERT INTO `qb_fenlei_friendlink` (`id`, `fid`, `name`, `url`, `logo`, `descrip`, `list`, `ifhide`, `iswordlink`, `hits`, `posttime`, `uid`, `username`, `yz`, `endtime`, `city_id`) VALUES
(29, 0, '中电云集', 'http://www.chinaccnet.com/', '', '中电云集', 0, 0, 0, 0, 0, 0, '', 1, 0, 6),
(32, 0, '华夏名网', 'http://www.sudu.cn/', '', '华夏名网', 0, 0, 0, 0, 0, 0, '', 1, 0, 0),
(51, 0, '阿什顿', 'asd', 'http://pic.yorkbbs.ca/2331.gif', '', 0, 0, 0, 0, 1408429179, 0, '', 1, 0, 0),
(39, 0, '北京百姓网', 'http://beijing.baixing.com/', '', '', 0, 0, 0, 0, 1375925583, 0, '', 1, 0, 1),
(40, 0, '百姓网', 'http://www.baixing.com/', '', '', 0, 0, 0, 0, 1375925627, 0, '', 1, 0, 0),
(41, 0, '一团网2', 'http://www.etuan.com/store-265.html', 'friendlink/1_20140818010840_osrsd.png', '', 0, 0, 0, 0, 1375926157, 0, '', 1, 0, 0),
(42, 0, '阿里云69元主机', 'http://www.aliyun.com/cps/rebate?from_uid=Sg3aj83ALjgL/qSLSLDPJWmNRvmTiLeY', 'friendlink/1_20140818010810_thp5w.png', '', 0, 0, 0, 0, 1375929701, 0, '', 1, 0, 0),
(43, 0, '北京58同城', 'http://bj.58.com/', '/images/baixing2013/logo.png', '', 0, 0, 1, 0, 1375930103, 0, '', 1, 0, 1),
(44, 0, '114兼职', 'http://www.114345.com', 'friendlink/1_20140818010853_qr3ji.png', '', 0, 0, 0, 0, 1398567461, 0, '', 1, 0, 2),
(49, 0, '', 'asdasdasd', '', '', 0, 0, 0, 0, 1408428730, 0, '', 1, 0, 1),
(46, 0, '', '', '/images/baixing2013/logo.png', '', 0, 0, 0, 0, 1408428505, 0, '', 1, 0, 2),
(50, 0, '123', '', 'http://pic.yorkbbs.ca/2696.jpg', '', 0, 0, 0, 0, 1408429149, 0, '', 1, 0, 0),
(48, 0, '', '/images/baixing2013/logo.png', 'http://resource.img1.yorkbbs.ca/ads/201431022141640815970.gif', '', 0, 0, 0, 0, 1408428532, 0, '', 1, 0, 0),
(52, 0, 'asdd', 'asd', 'http://pic.yorkbbs.ca/2505.gif', '', 0, 0, 0, 0, 1408429193, 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_module`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_module` (
  `id` smallint(4) NOT NULL auto_increment,
  `sort_id` mediumint(5) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `list` smallint(4) NOT NULL default '0',
  `style` varchar(50) NOT NULL default '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL default '0',
  `ifdp` tinyint(1) NOT NULL default '0',
  `template` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=124 ;

--
-- 转存表中的数据 `qb_fenlei_module`
--

INSERT INTO `qb_fenlei_module` (`id`, `sort_id`, `name`, `list`, `style`, `config`, `config2`, `comment_type`, `ifdp`, `template`) VALUES
(4, 0, '兼职招聘', 7, '', 'a:1:{s:9:"moduleSet";N;}', '', 0, 0, ''),
(115, 0, '兼职求职简历', 0, '', 'N;', '', 0, 0, ''),
(66, 0, '保健按摩', 0, '', 'N;', '', 0, 0, ''),
(35, 0, '门票卡券', 0, '', 'N;', '', 0, 0, ''),
(36, 0, '文体用品', 0, '', 'N;', '', 0, 0, ''),
(37, 0, '二手回收', 0, '', 'N;', '', 0, 0, ''),
(21, 0, '电脑配件', 94, '', 'N;', '', 0, 0, ''),
(22, 0, '数码产品', 93, '', 'N;', '', 0, 0, ''),
(23, 0, '家具', 92, '', 'N;', '', 0, 0, ''),
(24, 0, '家用电器', 91, '', 'N;', '', 0, 0, ''),
(25, 0, '日用品/化妆品', 90, '', 'N;', '', 0, 0, ''),
(26, 0, '农产品/食品', 89, '', 'N;', '', 0, 0, ''),
(27, 0, '办公家具/耗材', 0, '', 'N;', '', 0, 0, ''),
(28, 0, '收藏品/工艺品', 0, '', 'N;', '', 0, 0, ''),
(29, 0, '服装/配饰', 0, '', 'N;', '', 0, 0, ''),
(30, 0, '母婴/幼儿/玩具', 0, '', 'N;', '', 0, 0, ''),
(31, 0, '手表/首饰', 0, '', 'N;', '', 0, 0, ''),
(32, 0, '鞋子/箱包', 0, '', 'N;', '', 0, 0, ''),
(33, 0, '虚拟物品/QQ', 0, '', 'N;', '', 0, 0, ''),
(34, 0, '运动/图书/乐器', 0, '', 'N;', '', 0, 0, ''),
(15, 0, '二手手机', 100, '', 'N;', '', 0, 0, ''),
(16, 0, '手机号码', 99, '', 'N;', '', 0, 0, ''),
(17, 0, '笔记本', 98, '', 'N;', '', 0, 0, ''),
(18, 0, '平板电脑', 97, '', 'N;', '', 0, 0, ''),
(19, 0, '台式电脑', 96, '', 'N;', '', 0, 0, ''),
(67, 0, '广告/美工/设计', 0, '', 'N;', '', 0, 0, ''),
(38, 0, '其他价格和描述', 0, '', 'N;', '', 0, 0, ''),
(39, 0, '工业设备', 0, '', 'N;', '', 0, 0, ''),
(40, 0, '二手轿车', 0, '', 'N;', '', 0, 0, ''),
(41, 0, '货车/工程车', 0, '', 'N;', '', 0, 0, ''),
(42, 0, '面包车/客车', 0, '', 'N;', '', 0, 0, ''),
(43, 0, '拖拉机/收割机', 0, '', 'N;', '', 0, 0, ''),
(44, 0, '新车优惠/4S店', 0, '', 'N;', '', 0, 0, ''),
(45, 0, '汽车用品', 0, '', 'N;', '', 0, 0, ''),
(46, 0, '汽车配件', 0, '', 'N;', '', 0, 0, ''),
(47, 0, '车辆收购', 0, '', 'N;', '', 0, 0, ''),
(48, 0, '过户上牌', 0, '', 'N;', '', 0, 0, ''),
(49, 0, '通用[价格描述]', 0, '', 'a:1:{s:9:"moduleSet";a:1:{s:6:"useMap";s:1:"0";}}', '', 0, 0, 'a:4:{s:4:"list";s:0:"";s:4:"show";s:0:"";s:4:"post";s:0:"";s:6:"search";s:0:"";}'),
(50, 0, '租车', 0, '', 'N;', '', 0, 0, ''),
(51, 0, '摩托车/燃气车', 0, '', 'N;', '', 0, 0, ''),
(52, 0, '电动车', 0, '', 'N;', '', 0, 0, ''),
(53, 0, '自行车', 0, '', 'N;', '', 0, 0, ''),
(54, 0, '房屋出租', 0, '', 'N;', '', 0, 0, ''),
(55, 0, '日租/短租', 0, '', 'N;', '', 0, 0, ''),
(56, 0, '二手房出售', 0, '', 'N;', '', 0, 0, ''),
(60, 0, '写字楼出售', 0, '', 'N;', '', 0, 0, ''),
(59, 0, '新房出售', 0, '', 'N;', '', 0, 0, ''),
(61, 0, '商铺出售', 0, '', 'N;', '', 0, 0, ''),
(62, 0, '店铺转让/出租', 0, '', 'N;', '', 0, 0, ''),
(63, 0, '厂房/仓库/土地', 0, '', 'N;', '', 0, 0, ''),
(64, 0, '人才招聘会', 0, '', 'N;', '', 0, 0, ''),
(65, 0, '其它招聘', 0, '', 'N;', '', 0, 0, ''),
(68, 0, 'IT/通信/互联网', 0, '', 'N;', '', 0, 0, ''),
(69, 0, '教育/培训/咨询', 0, '', 'N;', '', 0, 0, ''),
(70, 0, '财务/会计/出纳', 0, '', 'N;', '', 0, 0, ''),
(71, 0, '工人/技工', 0, '', 'N;', '', 0, 0, ''),
(72, 0, '翻译', 0, '', 'N;', '', 0, 0, ''),
(73, 0, '销售', 0, '', 'N;', '', 0, 0, ''),
(74, 0, '本地名站', 0, '', 'N;', '', 0, 0, ''),
(75, 0, '礼品定制', 0, '', 'N;', '', 0, 0, ''),
(76, 0, '鲜花/盆景', 0, '', 'N;', '', 0, 0, ''),
(77, 0, '翻译/速记', 0, '', 'N;', '', 0, 0, ''),
(78, 0, '律师', 0, '', 'N;', '', 0, 0, ''),
(79, 0, '设计策划', 0, '', 'N;', '', 0, 0, ''),
(80, 0, '印刷/喷绘', 0, '', 'N;', '', 0, 0, ''),
(81, 0, '庆典/演出', 0, '', 'N;', '', 0, 0, ''),
(82, 0, '租赁', 0, '', 'N;', '', 0, 0, ''),
(83, 0, '快递/物流', 0, '', 'N;', '', 0, 0, ''),
(84, 0, '其他服务', 0, '', 'N;', '', 0, 0, ''),
(85, 0, '会计/审计', 0, '', 'N;', '', 0, 0, ''),
(86, 0, '公司注册', 0, '', 'N;', '', 0, 0, ''),
(87, 0, '担保/贷款', 0, '', 'N;', '', 0, 0, ''),
(88, 0, '招商加盟', 0, '', 'N;', '', 0, 0, ''),
(89, 0, '机票/签证', 0, '', 'N;', '', 0, 0, ''),
(90, 0, '酒店', 0, '', 'N;', '', 0, 0, ''),
(91, 0, '休闲娱乐', 0, '', 'N;', '', 0, 0, ''),
(92, 0, '旅游', 0, '', 'N;', '', 0, 0, ''),
(93, 0, '外卖/送水', 0, '', 'N;', '', 0, 0, ''),
(94, 0, '疏通', 0, '', 'N;', '', 0, 0, ''),
(95, 0, '家居维修', 0, '', 'N;', '', 0, 0, ''),
(96, 0, '电脑维修', 0, '', 'N;', '', 0, 0, ''),
(97, 0, '家电维修', 0, '', 'N;', '', 0, 0, ''),
(98, 0, '物品回收', 0, '', 'N;', '', 0, 0, ''),
(99, 0, '保洁/清洗', 0, '', 'N;', '', 0, 0, ''),
(100, 0, '保姆/月嫂', 0, '', 'N;', '', 0, 0, ''),
(101, 0, '投资理财', 0, '', 'N;', '', 0, 0, ''),
(102, 0, '建材装饰', 0, '', 'N;', '', 0, 0, ''),
(103, 0, '装修', 0, '', 'N;', '', 0, 0, ''),
(104, 0, '美容纤体', 0, '', 'N;', '', 0, 0, ''),
(105, 0, '摄影', 0, '', 'N;', '', 0, 0, ''),
(106, 0, '婚庆/化妆', 0, '', 'N;', '', 0, 0, ''),
(107, 0, '职业技能培训', 0, '', 'N;', '', 0, 0, ''),
(108, 0, '学历教育', 0, '', 'N;', '', 0, 0, ''),
(109, 0, '其他培训', 0, '', 'N;', '', 0, 0, ''),
(110, 0, '中小学教育', 0, '', 'N;', '', 0, 0, ''),
(111, 0, '文艺/体育培训', 0, '', 'N;', '', 0, 0, ''),
(112, 0, '征婚', 0, '', 'N;', '', 0, 0, ''),
(113, 0, '技能交换', 0, '', 'N;', '', 0, 0, ''),
(114, 0, '其他交友', 0, '', 'N;', '', 0, 0, ''),
(116, 0, '全职求职简历', 0, '', 'N;', '', 0, 0, ''),
(117, 0, '狗狗', 0, '', 'N;', '', 0, 0, ''),
(118, 0, '猫猫', 0, '', 'N;', '', 0, 0, ''),
(119, 0, '花鸟鱼虫/其他', 0, '', 'N;', '', 0, 0, ''),
(120, 0, '宠物赠送', 0, '', 'N;', '', 0, 0, ''),
(121, 0, '宠物用品', 0, '', 'N;', '', 0, 0, ''),
(122, 0, '宠物服务/配种', 0, '', 'N;', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_module_sort`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_module_sort` (
  `sort_id` mediumint(5) NOT NULL auto_increment,
  `sort_name` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`sort_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_pic`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_pic` (
  `pid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `mid` smallint(4) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `imgurl` varchar(150) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `id` (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=710 ;

--
-- 转存表中的数据 `qb_fenlei_pic`
--

INSERT INTO `qb_fenlei_pic` (`pid`, `id`, `fid`, `mid`, `uid`, `type`, `imgurl`, `name`) VALUES
(1, 1, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6734506480129.jpg', ''),
(2, 1, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6734508713986.jpg', ''),
(3, 1, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6734511689476.jpg', ''),
(4, 1, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6734471650562.jpg', ''),
(5, 1, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6734518066946.jpg', ''),
(6, 1, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6734520442626.jpg', ''),
(7, 1, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6734524643841.jpg', ''),
(8, 2, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6677318701828.jpg', ''),
(9, 2, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6677317915396.jpg', ''),
(10, 2, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6677276803586.jpg', ''),
(11, 3, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6669086810625.jpg', ''),
(12, 3, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6669094643458.jpg', ''),
(13, 3, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6669102120962.jpg', ''),
(14, 3, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6669117145858.jpg', ''),
(15, 3, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6669109559044.jpg', ''),
(16, 4, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6776884899585.jpg', ''),
(17, 4, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6776877710852.jpg', ''),
(18, 4, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6776878775809.jpg', ''),
(19, 5, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6675172719362.jpg', ''),
(20, 5, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6675127980802.jpg', ''),
(21, 6, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6274044757249.jpg', ''),
(22, 6, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6274014898178.jpg', ''),
(23, 6, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6274027778306.jpg', ''),
(24, 6, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6274060408068.jpg', ''),
(25, 7, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6629233098498.jpg', ''),
(26, 7, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6629279272962.jpg', ''),
(27, 8, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6756913455618.jpg', ''),
(28, 8, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6756914729730.jpg', ''),
(29, 8, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6756871945730.jpg', ''),
(30, 8, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6756918049796.jpg', ''),
(31, 9, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6648791474433.jpg', ''),
(32, 9, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6648799507202.jpg', ''),
(33, 9, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6648800388356.jpg', ''),
(34, 10, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_5923400835588.jpg', ''),
(35, 10, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_5923402491138.jpg', ''),
(36, 10, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_5923379162114.jpg', ''),
(37, 10, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_5923404312066.jpg', ''),
(38, 10, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_5923405158404.jpg', ''),
(39, 10, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_5923405762817.jpg', ''),
(40, 11, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6543150205444.jpg', ''),
(41, 11, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6543157596673.jpg', ''),
(42, 11, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6543160072961.jpg', ''),
(43, 11, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6543123519234.jpg', ''),
(44, 12, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6695274413313.jpg', ''),
(45, 12, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6695230392834.jpg', ''),
(46, 12, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6695279130369.jpg', ''),
(47, 12, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6695238440706.jpg', ''),
(48, 13, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6651860091394.jpg', ''),
(49, 13, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6651863946754.jpg', ''),
(50, 13, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6651868582657.jpg', ''),
(51, 13, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6651879048194.jpg', ''),
(52, 13, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6651894885889.jpg', ''),
(53, 13, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6651881218306.jpg', ''),
(54, 14, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6273115439620.jpg', ''),
(55, 14, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6273081732354.jpg', ''),
(56, 14, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6273116459524.jpg', ''),
(57, 14, 12, 0, 1, 0, 'http://pic.58.com/p1/big/n_6273084650754.jpg', ''),
(58, 15, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_6668288325380.jpg', ''),
(59, 15, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_6668243447298.jpg', ''),
(60, 16, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_5847911041538.jpg', ''),
(61, 16, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_5847913764356.jpg', ''),
(62, 16, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_5847894684162.jpg', ''),
(63, 16, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_5847939890436.jpg', ''),
(64, 16, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_5847920633858.jpg', ''),
(65, 16, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_5847955339777.jpg', ''),
(66, 17, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_6547264688642.jpg', ''),
(67, 17, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_6547269359874.jpg', ''),
(68, 18, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6761542190084.jpg', ''),
(69, 18, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6761537635844.jpg', ''),
(70, 19, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6674458128129.jpg', ''),
(71, 19, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6674449699330.jpg', ''),
(72, 20, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6579165722369.jpg', ''),
(73, 20, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6579148441858.jpg', ''),
(74, 20, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6579261257218.jpg', ''),
(75, 20, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6579209917186.jpg', ''),
(76, 20, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6579249465090.jpg', ''),
(77, 20, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6579248914946.jpg', ''),
(78, 21, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6777321068802.jpg', ''),
(79, 21, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6777283788546.jpg', ''),
(80, 21, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6777313677060.jpg', ''),
(81, 21, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6777269783554.jpg', ''),
(82, 22, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_5914324988418.jpg', ''),
(83, 22, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_5914322499330.jpg', ''),
(84, 22, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_5914321671684.jpg', ''),
(85, 22, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_5914320547332.jpg', ''),
(86, 22, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_5914326906372.jpg', ''),
(87, 22, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_5914325925634.jpg', ''),
(88, 23, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6228552039169.jpg', ''),
(89, 23, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6228540864002.jpg', ''),
(90, 23, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6228514492162.jpg', ''),
(91, 23, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_6228527664898.jpg', ''),
(92, 24, 19, 0, 1, 0, 'http://pic.58.com/p1/big/n_2840474831617.jpg', ''),
(93, 25, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6676699118849.jpg', ''),
(94, 25, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6676701816834.jpg', ''),
(95, 25, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6676702116353.jpg', ''),
(96, 25, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6676658765826.jpg', ''),
(97, 25, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6676703413762.jpg', ''),
(98, 25, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6676703170561.jpg', ''),
(99, 26, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6669667112193.jpg', ''),
(100, 26, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6669663453186.jpg', ''),
(101, 27, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6675030029058.jpg', ''),
(102, 27, 11, 0, 1, 0, 'http://pic.58.com/p1/big/n_6675006245377.jpg', ''),
(103, 28, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_6734044924418.jpg', ''),
(104, 28, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_6734089378818.jpg', ''),
(105, 28, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_6734092457473.jpg', ''),
(106, 28, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_6734090518785.jpg', ''),
(107, 29, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_4233931316737.jpg', ''),
(108, 30, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_6755839858689.jpg', ''),
(109, 30, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_6755798215938.jpg', ''),
(110, 31, 25, 0, 1, 0, 'http://pic.58.com/p1/big/n_6777091359492.jpg', ''),
(111, 32, 129, 0, 1, 0, 'http://pic.58.com/p1/big/n_6777574838529.jpg', ''),
(112, 33, 60, 0, 1, 0, 'http://pic.58.com/p1/big/n_6668047451908.jpg', ''),
(113, 34, 26, 0, 1, 0, 'http://pic.58.com/p1/big/n_6762676355074.jpg', ''),
(114, 35, 31, 0, 1, 0, 'http://pic.58.com/p1/big/n_5042078629889.jpg', ''),
(115, 36, 30, 0, 1, 0, 'http://pic.58.com/p1/big/n_6778448960516.jpg', ''),
(116, 37, 24, 0, 1, 0, 'http://pic.58.com/p1/big/n_6780653510658.jpg', ''),
(117, 40, 43, 0, 1, 0, 'http://3.pic.58control.cn/p1/big/n_1659651257387546.jpg', ''),
(118, 41, 43, 0, 1, 0, 'http://4.pic.58control.cn/p1/big/n_1659633132718615.jpg', ''),
(119, 42, 43, 0, 1, 0, 'http://1.pic.58control.cn/p1/big/n_1634253093587226.jpg', ''),
(120, 43, 43, 0, 1, 0, 'http://pic2.58.com/ui7/detail/img/step_nor2.png', ''),
(121, 44, 43, 0, 1, 0, 'http://4.pic.58control.cn/mobile/big/n_1658413119422744.jpg', ''),
(122, 45, 43, 0, 1, 0, 'http://3.pic.58control.cn/p1/big/n_1654071389373977.jpg', ''),
(123, 47, 40, 0, 1, 0, 'http://3.pic.58control.cn/p1/big/n_23105920816399.jpg', ''),
(124, 48, 38, 0, 1, 0, 'http://3.pic.58control.cn/p1/big/n_1658616986322458.jpg', ''),
(125, 53, 304, 0, 1, 0, 'http://2.pic.58control.cn/p2/big/n_1577794176877848.jpg', ''),
(126, 54, 43, 0, 1, 0, 'http://3.pic.58control.cn/p1/big/n_1674044334915609.jpg', ''),
(127, 55, 43, 0, 0, 0, 'http://1.pic.58control.cn/p1/big/n_1674032385180440.jpg', ''),
(128, 56, 43, 0, 0, 0, 'http://2.pic.58control.cn/p1/big/n_1664462739884313.jpg', ''),
(129, 57, 43, 0, 1, 0, 'http://3.pic.58control.cn/mobile/big/n_1669662850221849.jpg', ''),
(130, 58, 43, 0, 1, 0, 'http://3.pic.58control.cn/mobile/big/n_1673773104334105.jpg', ''),
(131, 59, 43, 0, 1, 0, 'http://1.pic.58control.cn/p1/big/n_1673973573551897.jpg', ''),
(132, 62, 43, 0, 1, 0, 'http://4.pic.58control.cn/p1/big/n_1669733052432408.jpg', ''),
(133, 63, 43, 0, 1, 0, 'http://1.pic.58control.cn/p1/big/n_1673953198162713.jpg', ''),
(134, 64, 43, 0, 1, 0, 'http://2.pic.58control.cn/mobile/big/n_1670071243130906.jpg', ''),
(135, 65, 43, 0, 1, 0, 'http://2.pic.58control.cn/p1/big/n_1673909081229082.jpg', ''),
(136, 66, 43, 0, 1, 0, 'http://1.pic.58control.cn/p1/big/n_1669886131439898.jpg', ''),
(137, 67, 43, 0, 1, 0, 'http://2.pic.58control.cn/p1/big/n_1663924101497369.jpg', ''),
(138, 68, 43, 0, 1, 0, 'http://2.pic.58control.cn/p1/big/n_1668963475015448.jpg', ''),
(139, 71, 43, 0, 1, 0, 'http://4.pic.58control.cn/mobile/tiny/n_1666042116917529.jpg', ''),
(140, 72, 43, 0, 1, 0, 'http://1.pic.58control.cn/p1/big/n_1673796326081050.jpg', ''),
(141, 73, 43, 0, 1, 0, 'http://3.pic.58control.cn/p1/big/n_1654204670935321.jpg', ''),
(142, 74, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130529120511_cl1dv.jpg', ''),
(143, 76, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130529230543_fz6k6.gif', ''),
(144, 77, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130529230544_hp1wi.gif', ''),
(145, 78, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130607200634_oofn9.jpg', ''),
(146, 78, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130607160600_s4kp1.jpg', ''),
(147, 78, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130607160625_sjm1a.jpg', ''),
(148, 78, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130607170647_oolwz.jpg', ''),
(149, 78, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130607170648_hqhfb.jpg', ''),
(150, 79, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130607170610_wf5qb.jpg', ''),
(151, 79, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130607170617_uqtfb.jpg', ''),
(152, 80, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130607200634_evfww.jpg', ''),
(153, 83, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130718110721_mggiz.jpg', ''),
(154, 83, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130718110756_5zkgl.jpg', ''),
(155, 83, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130718110751_0j2lq.jpg', ''),
(156, 84, 43, 0, 0, 0, 'qb_fenlei_/43/_20130718110706_0z6sr.jpg', ''),
(157, 84, 43, 0, 0, 0, 'qb_fenlei_/43/_20130718110707_jdfgn.jpg', ''),
(158, 86, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130718110708_xwtfh.jpg', ''),
(159, 86, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130718110748_ab26z.jpg', ''),
(160, 87, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803190852_areln.jpg', ''),
(161, 87, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803190807_kcgss.jpg', ''),
(162, 87, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803190807_bqet1.jpg', ''),
(163, 87, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803190807_uf4o1.jpg', ''),
(164, 88, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803200853_cjjoe.jpg', ''),
(165, 88, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803200853_bidd4.jpg', ''),
(166, 88, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803200853_w5sz7.jpg', ''),
(167, 89, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803200827_4ixhz.jpg', ''),
(168, 89, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803200827_xtjgg.jpg', ''),
(171, 95, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803210846_rjxpk.jpg', ''),
(172, 95, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803210858_zhfk6.gif', ''),
(173, 96, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803210807_meei5.gif', ''),
(174, 96, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803210843_6lz3k.jpg', ''),
(175, 98, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803210837_xj6b8.gif', ''),
(181, 99, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803210819_gvit2.jpg', ''),
(180, 99, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803210819_2ey6m.jpg', ''),
(179, 99, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803210819_pansx.gif', ''),
(182, 99, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803210836_t2mad.jpg', ''),
(183, 100, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803210834_mpgn1.jpg', ''),
(184, 100, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130803210849_rwq2g.jpg', ''),
(185, 102, 42, 0, 1, 0, 'qb_fenlei_/42/1_20130804100804_ginva.jpg', ''),
(186, 103, 40, 0, 1, 0, 'qb_fenlei_/40/1_20130804100835_exd08.jpg', ''),
(187, 104, 38, 0, 1, 0, 'qb_fenlei_/38/1_20130804100806_a2onq.jpg', ''),
(188, 105, 37, 0, 1, 0, 'qb_fenlei_/37/1_20130804110844_q7fcp.jpg', ''),
(189, 106, 36, 0, 1, 0, 'qb_fenlei_/36/1_20130804110805_jjudw.jpg', ''),
(190, 107, 33, 0, 1, 0, 'qb_fenlei_/33/1_20130804140817_wuwwq.jpg', ''),
(191, 108, 32, 0, 1, 0, 'qb_fenlei_/32/1_20130804140853_rhzyy.jpg', ''),
(193, 110, 31, 0, 1, 0, 'qb_fenlei_/31/1_20130804140850_au7su.jpg', ''),
(194, 111, 30, 0, 1, 0, 'qb_fenlei_/30/1_20130804140853_kilvi.jpg', ''),
(195, 112, 29, 0, 1, 0, 'qb_fenlei_/29/1_20130804150825_aa6iu.jpg', ''),
(196, 113, 28, 0, 1, 0, 'qb_fenlei_/28/1_20130804150815_c0lfv.jpg', ''),
(197, 114, 27, 0, 1, 0, 'qb_fenlei_/27/1_20130804150828_ysu9q.jpg', ''),
(198, 115, 26, 0, 1, 0, 'qb_fenlei_/26/1_20130804150808_vs7qs.jpg', ''),
(199, 116, 43, 0, 1, 0, 'qb_fenlei_/43/1_20130804160817_3ies3.jpg', ''),
(200, 117, 25, 0, 1, 0, 'qb_fenlei_/25/1_20130804160816_su9id.jpg', ''),
(201, 118, 24, 0, 1, 0, 'qb_fenlei_/24/1_20130804160855_jhlf5.jpg', ''),
(202, 119, 23, 0, 1, 0, 'qb_fenlei_/23/1_20130804160850_cqvfo.jpg', ''),
(203, 120, 21, 0, 1, 0, 'qb_fenlei_/21/1_20130804160858_uyygm.jpg', ''),
(204, 121, 173, 0, 1, 0, 'qb_fenlei_/173/1_20130804160804_uaasu.jpg', ''),
(205, 122, 174, 0, 1, 0, 'qb_fenlei_/174/1_20130804170809_yicta.jpg', ''),
(206, 123, 175, 0, 1, 0, 'qb_fenlei_/175/1_20130804170824_yjiee.jpg', ''),
(207, 124, 177, 0, 1, 0, 'qb_fenlei_/177/1_20130804170822_x6mf0.jpg', ''),
(208, 126, 178, 0, 1, 0, 'qb_fenlei_/178/1_20130804200839_zmw4h.jpg', ''),
(209, 127, 176, 0, 1, 0, 'qb_fenlei_/176/1_20130804220854_chomx.jpg', ''),
(210, 128, 179, 0, 1, 0, 'qb_fenlei_/179/1_20130804220825_5esck.jpg', ''),
(211, 129, 189, 0, 1, 0, 'qb_fenlei_/189/1_20130804230819_3wsk8.jpg', ''),
(212, 130, 190, 0, 1, 0, 'qb_fenlei_/190/1_20130804230849_wxklc.jpg', ''),
(213, 131, 191, 0, 1, 0, 'qb_fenlei_/191/1_20130804230838_vwcg7.jpg', ''),
(214, 132, 192, 0, 1, 0, 'qb_fenlei_/192/1_20130804230858_quyxy.jpg', ''),
(215, 133, 193, 0, 1, 0, 'qb_fenlei_/193/1_20130804230854_3j9mr.jpg', ''),
(216, 134, 194, 0, 1, 0, 'qb_fenlei_/194/1_20130804230849_1axux.jpg', ''),
(217, 135, 195, 0, 1, 0, 'qb_fenlei_/195/1_20130804230819_cxjsy.jpg', ''),
(218, 136, 196, 0, 1, 0, 'qb_fenlei_/196/1_20130804230825_jrjvb.jpg', ''),
(219, 140, 200, 0, 1, 0, 'qb_fenlei_/200/1_20130805000810_rbztx.jpg', ''),
(220, 141, 205, 0, 1, 0, 'qb_fenlei_/205/1_20130805090831_5x2ki.jpg', ''),
(221, 142, 206, 0, 1, 0, 'qb_fenlei_/206/1_20130805090844_jnnxo.jpg', ''),
(222, 143, 207, 0, 1, 0, 'qb_fenlei_/207/1_20130805090806_t1jam.jpg', ''),
(223, 144, 208, 0, 1, 0, 'qb_fenlei_/208/1_20130805100839_iesbc.jpg', ''),
(224, 145, 210, 0, 1, 0, 'qb_fenlei_/210/1_20130805100856_vizey.jpg', ''),
(225, 146, 211, 0, 1, 0, 'qb_fenlei_/211/1_20130805100807_wf6t3.jpg', ''),
(226, 147, 212, 0, 1, 0, 'qb_fenlei_/212/1_20130805100816_lbznn.jpg', ''),
(227, 148, 213, 0, 1, 0, 'qb_fenlei_/213/1_20130805100843_o2e2t.jpg', ''),
(228, 149, 214, 0, 1, 0, 'qb_fenlei_/214/1_20130805100855_gmclz.jpg', ''),
(229, 149, 214, 0, 1, 0, 'qb_fenlei_/214/1_20130805100855_w6wfp.jpg', ''),
(230, 150, 215, 0, 1, 0, 'qb_fenlei_/215/1_20130805110808_jjurp.jpg', ''),
(231, 151, 216, 0, 1, 0, 'qb_fenlei_/216/1_20130805110819_l9wtw.jpg', ''),
(232, 154, 252, 0, 1, 0, 'qb_fenlei_/252/1_20130805120819_ga3re.jpg', ''),
(233, 159, 243, 0, 1, 0, 'qb_fenlei_/243/1_20130805130808_vlrp9.jpg', ''),
(234, 163, 329, 0, 1, 0, 'qb_fenlei_/329/1_20130805130827_my2ha.jpg', ''),
(235, 165, 327, 0, 1, 0, 'qb_fenlei_/327/1_20130805140824_9dyao.jpg', ''),
(236, 167, 325, 0, 1, 0, 'qb_fenlei_/325/1_20130805140817_sq4me.gif', ''),
(237, 168, 324, 0, 1, 0, 'qb_fenlei_/324/1_20130805140847_z2kus.jpg', ''),
(238, 169, 323, 0, 1, 0, 'qb_fenlei_/323/1_20130805140816_any5j.jpg', ''),
(239, 170, 322, 0, 1, 0, 'qb_fenlei_/322/1_20130805140814_ts0fb.jpg', ''),
(240, 171, 321, 0, 1, 0, 'qb_fenlei_/321/1_20130805140829_ielyj.jpg', ''),
(241, 173, 319, 0, 1, 0, 'qb_fenlei_/319/1_20130805140853_nthg0.jpg', ''),
(242, 175, 317, 0, 1, 0, 'qb_fenlei_/317/1_20130805140833_cpsm1.jpg', ''),
(243, 176, 316, 0, 1, 0, 'qb_fenlei_/316/1_20130805140848_traqi.jpg', ''),
(244, 177, 315, 0, 1, 0, 'qb_fenlei_/315/1_20130805140854_z0wil.jpg', ''),
(245, 178, 314, 0, 1, 0, 'qb_fenlei_/314/1_20130805140813_wmenp.jpg', ''),
(246, 181, 310, 0, 1, 0, 'qb_fenlei_/310/1_20130805150818_rsmx9.jpg', ''),
(247, 182, 309, 0, 1, 0, 'qb_fenlei_/309/1_20130805150839_efqnd.jpg', ''),
(248, 183, 308, 0, 1, 0, 'qb_fenlei_/308/1_20130805150819_knv8g.jpg', ''),
(249, 184, 307, 0, 1, 0, 'qb_fenlei_/307/1_20130805150851_twfcm.jpg', ''),
(250, 185, 306, 0, 1, 0, 'qb_fenlei_/306/1_20130805150816_yozhw.jpg', ''),
(251, 188, 302, 0, 1, 0, 'qb_fenlei_/302/1_20130805160816_hfjpi.jpg', ''),
(252, 190, 300, 0, 1, 0, 'qb_fenlei_/300/1_20130805160836_39zqw.jpg', ''),
(253, 191, 299, 0, 1, 0, 'qb_fenlei_/299/1_20130805160804_0pspq.jpg', ''),
(254, 192, 298, 0, 1, 0, 'qb_fenlei_/298/1_20130805160812_tf7av.jpg', ''),
(255, 193, 297, 0, 1, 0, 'qb_fenlei_/297/1_20130805160842_erq04.jpg', ''),
(256, 194, 296, 0, 1, 0, 'qb_fenlei_/296/1_20130805160809_kvzhn.jpg', ''),
(257, 195, 332, 0, 1, 0, 'qb_fenlei_/332/1_20130805160823_dfpeq.jpg', ''),
(258, 196, 333, 0, 1, 0, 'qb_fenlei_/333/1_20130805160830_oyn74.jpg', ''),
(259, 197, 334, 0, 1, 0, 'qb_fenlei_/334/1_20130805160855_dou8w.jpg', ''),
(260, 199, 339, 0, 1, 0, 'qb_fenlei_/339/1_20130805170846_jldvw.jpg', ''),
(261, 201, 274, 0, 1, 0, 'qb_fenlei_/274/1_20130805170800_nzhiw.jpg', ''),
(262, 203, 273, 0, 1, 0, 'qb_fenlei_/273/1_20130805200848_ecvfx.jpg', ''),
(263, 205, 286, 0, 1, 0, 'qb_fenlei_/286/1_20130805210825_y1mxx.jpg', ''),
(264, 206, 287, 0, 1, 0, 'qb_fenlei_/287/1_20130805220850_nqqxh.jpg', ''),
(265, 207, 288, 0, 1, 0, 'qb_fenlei_/288/1_20130805220831_j8mtl.jpg', ''),
(266, 208, 289, 0, 1, 0, 'qb_fenlei_/289/1_20130805220838_xldw2.jpg', ''),
(267, 210, 291, 0, 1, 0, 'qb_fenlei_/291/1_20130805220822_x2mat.jpg', ''),
(268, 206, 287, 0, 1, 0, 'qb_fenlei_/287/1_20130807170852_drtdk.gif', ''),
(269, 206, 287, 0, 1, 0, 'qb_fenlei_/287/1_20130807170852_buahc.jpg', ''),
(270, 206, 287, 0, 1, 0, 'qb_fenlei_/287/1_20130807170852_clgd1.jpg', ''),
(271, 206, 287, 0, 1, 0, 'qb_fenlei_/287/1_20130807170852_7bgxl.jpg', ''),
(272, 206, 287, 0, 1, 0, 'qb_fenlei_/287/1_20130807170852_2thqt.jpg', ''),
(275, 212, 43, 0, 1, 0, 'upload_files/qb_fenlei_/2013/08/06/950226_20130723160710_arp1s.jpg.gif', ''),
(276, 213, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/980578_20130811100808_r4guk.jpg.gif', ''),
(277, 232, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/978468_20130805140810_q25li.jpg.gif', ''),
(278, 236, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/978468_20130805140822_gnyet.jpg.gif', ''),
(279, 239, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/978468_20130805140809_w7otb.jpg.gif', ''),
(280, 241, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/978348_20130805100847_q5un6.jpg.gif', ''),
(281, 250, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130730100710_rym9y.jpg.gif', ''),
(282, 269, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130803090816_hs4io.jpg.gif', ''),
(283, 272, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130730100736_ttwyv.jpg.gif', ''),
(284, 274, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130730100753_trvg0.jpg.gif', ''),
(285, 276, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130730110710_cds6l.jpg.gif', ''),
(286, 278, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/928054_20130726100729_43uxb.jpg.gif', ''),
(287, 280, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100755_uz9xo.jpg.gif', ''),
(288, 281, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100708_fxscm.jpg.gif', ''),
(289, 282, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100745_k3uw5.jpg.gif', ''),
(290, 283, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100706_o5l54.jpg.gif', ''),
(291, 284, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100745_4ksw6.jpg.gif', ''),
(292, 286, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/941323_20130507150534_0fqv5.jpg.gif', ''),
(293, 289, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/961175_20130707160702_1iwfy.jpg.gif', ''),
(294, 291, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/961175_20130709100701_hqji1.jpg.gif', ''),
(295, 292, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/970367_20130723200709_tzck1.jpg.gif', ''),
(296, 293, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130722100759_npuxp.jpg.gif', ''),
(297, 303, 42, 0, 1, 0, ' http://pic.kuyiso.com/2013/0720/0125239s_511094_20263617.jpg', ''),
(298, 318, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130730100753_trvg0.jpg.gif', ''),
(299, 319, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130730110710_cds6l.jpg.gif', ''),
(300, 320, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/928054_20130726100729_43uxb.jpg.gif', ''),
(301, 322, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100755_uz9xo.jpg.gif', ''),
(302, 324, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100708_fxscm.jpg.gif', ''),
(303, 325, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130803090816_hs4io.jpg.gif', ''),
(304, 327, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100706_o5l54.jpg.gif', ''),
(305, 328, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130730100736_ttwyv.jpg.gif', ''),
(306, 329, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100745_k3uw5.jpg.gif', ''),
(307, 331, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100745_4ksw6.jpg.gif', ''),
(308, 347, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/619163_20130409090422_jqpyb.jpg.gif', ''),
(309, 357, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/718763_20130805140813_ettqx.jpg.gif', ''),
(310, 359, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/917056_20130807110814_poml4.jpg.gif', ''),
(311, 360, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/920764_20130805110843_smohr.jpg.gif', ''),
(312, 361, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/917056_20130806110830_poml4.jpg.gif', ''),
(313, 363, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/966615_20130806110809_aexz5.jpg.gif', ''),
(314, 375, 40, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/119/958105_20130610030628_ais6a.jpg.gif', ''),
(315, 380, 38, 0, 1, 0, 'http://img4.baixing.net/f7cf16fb17f0abea15317ac4ef942ce6.jpg_bi.jpg', ''),
(316, 385, 43, 0, 1, 0, 'sdfsdf.jpg_bi', ''),
(317, 387, 40, 0, 1, 0, 'http://img6.baixing.net/2ea1b97d88e8b8b272661fc85da19fd9.jpg_bi', ''),
(318, 388, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130730100753_trvg0.jpg.gif', ''),
(319, 389, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130730110710_cds6l.jpg.gif', ''),
(320, 390, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/928054_20130726100729_43uxb.jpg.gif', ''),
(321, 391, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100755_uz9xo.jpg.gif', ''),
(322, 392, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100708_fxscm.jpg.gif', ''),
(323, 393, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130803090816_hs4io.jpg.gif', ''),
(324, 394, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100706_o5l54.jpg.gif', ''),
(325, 395, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130730100736_ttwyv.jpg.gif', ''),
(326, 396, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100745_k3uw5.jpg.gif', ''),
(327, 397, 43, 0, 1, 0, 'http://cn.51tie.com/upload_files/fenlei/23/964926_20130726100745_4ksw6.jpg.gif', ''),
(328, 398, 43, 0, 1, 0, 'http://img4.baixing.net/666341f446f3f499e35435fb74899566.jpg_bi', ''),
(329, 399, 43, 0, 1, 0, 'http://img6.baixing.net/5e20dde39387c22daad3996975c1b658.jpg_bi', ''),
(330, 400, 43, 0, 1, 0, 'http://img4.baixing.net/0c595a75f26a9cf203f9e49039105a3d.jpg_bi', ''),
(331, 402, 43, 0, 1, 0, 'http://img6.baixing.net/e614091df94c71da8a989257375ee08d.jpg_bi', ''),
(332, 403, 43, 0, 1, 0, 'http://img4.baixing.net/f7b316d301cace53743acc5e117914d7.jpg_bi', ''),
(333, 404, 43, 0, 1, 0, 'http://img6.baixing.net/544eb83240f6662e3ec1a6e6cbcc7e3a.jpg_bi', ''),
(334, 405, 43, 0, 1, 0, 'http://img4.baixing.net/cdba13944912e76943ea09c4b53d3b84.jpg_bi', ''),
(335, 407, 43, 0, 1, 0, 'http://img5.baixing.net/426f6c7070e24ff2d3f1c0d946d2e9da.jpg_bi', ''),
(336, 409, 43, 0, 1, 0, 'http://img6.baixing.net/86d4ce608f5940ac5b817933a3a731aa.jpg_bi', ''),
(337, 410, 43, 0, 1, 0, 'http://img4.baixing.net/9271d72450b063b3f807dd489fa7f044.jpg_bi', ''),
(338, 411, 43, 0, 1, 0, 'http://img4.baixing.net/91cadd1fd1e2c7e354f66b3ada22b7eb.jpg_bi', ''),
(339, 413, 43, 0, 1, 0, 'http://img5.baixing.net/12a941cba2eddb0d5aa9dbe7d794048d.jpg_bi', ''),
(340, 414, 43, 0, 1, 0, 'http://img5.baixing.net/adb3cd44093d8c772b231bd68e023101.jpg_bi', ''),
(341, 415, 43, 0, 1, 0, 'http://img2.baixing.net/m/46061ca4ae7ab1fe6c0f1784fd21415c.jpg', ''),
(342, 417, 43, 0, 1, 0, 'http://img5.baixing.net/ac1cbb968cb26b2b56801fb5952f4df9.jpg_bi', ''),
(343, 418, 43, 0, 1, 0, 'http://img2.baixing.net/m/1dec50ae825a19a9d784ad4a91106b05.jpg', ''),
(344, 419, 43, 0, 1, 0, 'http://img4.baixing.net/c8b7d44b9d861e24c01200d8929dfaef.jpg_bi', ''),
(345, 420, 43, 0, 1, 0, 'http://img6.baixing.net/ece6a08db5bf05e5cfc1a131bdcfde30.jpg_bi', ''),
(346, 421, 43, 0, 1, 0, 'http://img4.baixing.net/c1a8386063a9f98818cde679ba518e50.jpg_bi', ''),
(347, 422, 43, 0, 1, 0, 'http://img2.baixing.net/m/1518c6e6b7f5498cc18da0dcba05da2b.jpg', ''),
(348, 423, 43, 0, 1, 0, 'http://img6.baixing.net/80d35c998758232efd9463d71d34c1df.jpg_bi', ''),
(349, 424, 43, 0, 1, 0, 'http://img4.baixing.net/09814fc6d3ecc2f6fcac10d2f2baa94c.jpg_bi', ''),
(350, 426, 43, 0, 1, 0, 'http://img6.baixing.net/23053d500b1f4e94ee707c52a8993bc2.jpg_bi', ''),
(351, 427, 43, 0, 1, 0, 'http://img6.baixing.net/81b0767ebd69a9487eb132157a2c8542.jpg_bi', ''),
(352, 428, 43, 0, 1, 0, 'http://img4.baixing.net/390f26832e20be94c85552a7dc9f48a6.jpg_bi', ''),
(353, 430, 43, 0, 1, 0, 'http://img4.baixing.net/3845b810ce57ebbe7416f67115a506e3.jpg_bi', ''),
(354, 433, 43, 0, 1, 0, 'http://img5.baixing.net/d950a271c171a748c750637be0d8d91e.jpg_bi', ''),
(355, 434, 43, 0, 1, 0, 'http://img5.baixing.net/1a049caadb76c42ff2188f7b73303be5.jpg_bi', ''),
(356, 435, 43, 0, 1, 0, 'http://img4.baixing.net/fbc286a793d7fb2d8b5336463c5221b2.jpg_bi', ''),
(357, 436, 43, 0, 1, 0, 'http://img5.baixing.net/d950a271c171a748c750637be0d8d91e.jpg_bi', ''),
(358, 437, 43, 0, 1, 0, 'http://img5.baixing.net/dad0e133cc11acc98f7c2c15e23557d5.jpg_bi', ''),
(359, 438, 43, 0, 1, 0, 'http://img6.baixing.net/89c775fe75ff69325d0172dee5c4e201.jpg_bi', ''),
(360, 439, 43, 0, 1, 0, 'http://img1.baixing.net/m/3e45fe49585ef2c9ae27eb810123caa0.jpg', ''),
(361, 441, 43, 0, 1, 0, 'http://img5.baixing.net/ac44505041f3a6f2636ca0f928d0700c.jpg_bi', ''),
(362, 443, 43, 0, 1, 0, 'http://img4.baixing.net/f614789c1ec92ee444a3f3804027e45f.jpg_bi', ''),
(363, 444, 43, 0, 1, 0, 'http://img6.baixing.net/b537567bba13d23b714e4dc57d257fe3.jpg_bi', ''),
(364, 445, 43, 0, 1, 0, 'http://img5.baixing.net/d524c6fb9474bfcbb28cfe96daf37e33.jpg_bi', ''),
(365, 447, 43, 0, 1, 0, 'http://img6.baixing.net/e0f3e515f872b091722246956dd56fbe.jpg_bi', ''),
(366, 448, 43, 0, 1, 0, 'http://img5.baixing.net/d1b5bb9ecfdedeb90a9df09e0b194135.jpg_bi', ''),
(367, 449, 43, 0, 1, 0, 'http://img4.baixing.net/931a2b6f83d10dc3d18978fcc9b772ce.jpg_bi', ''),
(368, 451, 43, 0, 1, 0, 'http://img6.baixing.net/5d373ad6348fdfefb678da128178f967.jpg_bi', ''),
(369, 452, 43, 0, 1, 0, 'http://img4.baixing.net/05396ff8e6fca378fadbfada33afb0ef.jpg_bi', ''),
(370, 453, 43, 0, 1, 0, 'http://img6.baixing.net/be9bd41c36a1c360d1bf37277250227f.jpg_bi', ''),
(371, 455, 43, 0, 1, 0, 'http://img6.baixing.net/e063200e4d4a677f1da04b4737c93c94.jpg_bi', ''),
(372, 456, 43, 0, 1, 0, 'http://img4.baixing.net/fe1dc5b9cd43346908c5550f42e59713.jpg_bi', ''),
(373, 457, 43, 0, 1, 0, 'http://img4.baixing.net/305c8f441623740a0e9a8058b559b3cc.jpg_bi', ''),
(374, 459, 43, 0, 1, 0, 'http://img1.baixing.net/m/9b9483646143eeda04b9828e0ec1d7b8.jpg', ''),
(375, 460, 43, 0, 1, 0, 'http://img4.baixing.net/c986f66c5cfd84b31fdea1acfaf56db3.jpg_bi', ''),
(376, 461, 43, 0, 1, 0, 'http://img5.baixing.net/76711d741b9d6d4033c6d61fc9ea98bd.jpg_bi', ''),
(377, 462, 43, 0, 1, 0, 'http://img4.baixing.net/07dca323ea6d073d8f089cbb74fd1bb3.jpg_bi', ''),
(378, 463, 43, 0, 1, 0, 'http://img4.baixing.net/015fb13a3076993369fae09963949721.jpg_bi', ''),
(379, 464, 43, 0, 1, 0, 'http://img4.baixing.net/f13598b741c9784616b4a8f66fc33e72.jpg_bi', ''),
(380, 465, 43, 0, 1, 0, 'http://img3.baixing.net/m/b353d66ce86c6b6bbc6911f4ca474c33.jpg', ''),
(381, 466, 43, 0, 1, 0, 'http://img6.baixing.net/843d392fbce281cc52038245cfbb35fa.jpg_bi', ''),
(382, 467, 43, 0, 1, 0, 'http://img6.baixing.net/e21c5887c3be6745aef4d182d4eb3f78.jpg_bi', ''),
(383, 468, 43, 0, 1, 0, 'http://img4.baixing.net/354d79202825468d1e3c34739225996f.jpg_bi', ''),
(384, 469, 43, 0, 1, 0, 'http://img4.baixing.net/073683d125ceb9842640cbd712cf7a02.jpg_bi', ''),
(385, 471, 43, 0, 1, 0, 'http://img5.baixing.net/45feaa8ae2b5f88e4d3c397f801db525.jpg_bi', ''),
(386, 472, 43, 0, 1, 0, 'http://img4.baixing.net/99dc3ace9fb7823899fcdae1aa79eec5.jpg_bi', ''),
(387, 473, 43, 0, 1, 0, 'http://img6.baixing.net/e28a08094b6c0dc5bbfcfb2757540dd5.jpg_bi', ''),
(388, 474, 43, 0, 1, 0, 'http://img4.baixing.net/3f1e96befe18047e331c7cf0d8c70ee6.jpg_bi', ''),
(389, 475, 43, 0, 1, 0, 'http://img5.baixing.net/7475a8cf65343a1797f3c4c07c8ddb87.jpg_bi', ''),
(390, 476, 43, 0, 1, 0, 'http://img6.baixing.net/5dfe22fb1d7b5760bc8cfee8c88a8eab.jpg_bi', ''),
(391, 477, 43, 0, 1, 0, 'http://img6.baixing.net/ed29fb297bbba93874fc552a3630e777.jpg_bi', ''),
(392, 478, 43, 0, 1, 0, 'http://img6.baixing.net/522f016eb3619eb5efa254d314f746a9.jpg_bi', ''),
(393, 479, 43, 0, 1, 0, 'http://img6.baixing.net/ec74d9837332ad205883bd8f5d31a17a.jpg_bi', ''),
(394, 480, 43, 0, 1, 0, 'http://img5.baixing.net/ab13186fc8a76b738211ed8c34dfbf7d.jpg_bi', ''),
(395, 482, 43, 0, 1, 0, 'http://img4.baixing.net/9afe22cf34a6a0fa2b7be43d33cb9323.jpg_bi', ''),
(396, 483, 43, 0, 1, 0, 'http://img5.baixing.net/48e1931b5cf7e075ba98ca7f06d05189.jpg_bi', ''),
(397, 485, 43, 0, 1, 0, 'http://img6.baixing.net/83d08b2e8becf994f4471ad9ccf1bc0e.jpg_bi', ''),
(398, 486, 43, 0, 1, 0, 'http://img4.baixing.net/fbc286a793d7fb2d8b5336463c5221b2.jpg_bi', ''),
(399, 487, 43, 0, 1, 0, 'http://img5.baixing.net/44cc5467399ddf062d7bdbfabbf9c838.jpg_bi', ''),
(400, 488, 43, 0, 1, 0, 'http://img4.baixing.net/cf1fb870e436bf6cabe420692a304cb5.jpg_bi', ''),
(401, 489, 43, 0, 1, 0, 'http://img3.baixing.net/m/82857bf2370c1e49b9238b87bc9c9bee.jpg', ''),
(402, 490, 43, 0, 1, 0, 'http://img5.baixing.net/4ef91368947e6162d744dbd37cadf7e8.jpg_bi', ''),
(403, 492, 43, 0, 1, 0, 'http://img6.baixing.net/275788332bba8ae690f522971acc764b.jpg_bi', ''),
(404, 493, 43, 0, 1, 0, 'http://img2.baixing.net/m/da39550aef2bf712f67d1c86fc87084e.jpg', ''),
(405, 494, 43, 0, 1, 0, 'http://img4.baixing.net/6f34b6eb4f0f833e949bc680d7d88972.jpg_bi', ''),
(406, 495, 43, 0, 1, 0, 'http://img6.baixing.net/2305d4bf7570360d546997c03b858412.jpg_bi', ''),
(407, 496, 43, 0, 1, 0, 'http://img4.baixing.net/676e5ae716f88ce3c9b87fa3703b4cfb.jpg_bi', ''),
(408, 497, 43, 0, 1, 0, 'http://img5.baixing.net/d89da6f88fa2c9f89d5762ea17c24469.jpg_bi', ''),
(409, 498, 43, 0, 1, 0, 'http://img5.baixing.net/12a941cba2eddb0d5aa9dbe7d794048d.jpg_bi', ''),
(410, 500, 43, 0, 1, 0, 'http://img5.baixing.net/adb3cd44093d8c772b231bd68e023101.jpg_bi', ''),
(411, 501, 43, 0, 1, 0, 'http://img2.baixing.net/m/46061ca4ae7ab1fe6c0f1784fd21415c.jpg', ''),
(412, 502, 43, 0, 1, 0, 'http://img6.baixing.net/5e20dde39387c22daad3996975c1b658.jpg_bi', ''),
(413, 504, 43, 0, 1, 0, 'http://img5.baixing.net/ac1cbb968cb26b2b56801fb5952f4df9.jpg_bi', ''),
(414, 505, 43, 0, 1, 0, 'http://img4.baixing.net/666341f446f3f499e35435fb74899566.jpg_bi', ''),
(415, 506, 43, 0, 1, 0, 'http://img2.baixing.net/m/1dec50ae825a19a9d784ad4a91106b05.jpg', ''),
(416, 507, 43, 0, 1, 0, 'http://img4.baixing.net/0c595a75f26a9cf203f9e49039105a3d.jpg_bi', ''),
(417, 509, 43, 0, 1, 0, 'http://img4.baixing.net/c8b7d44b9d861e24c01200d8929dfaef.jpg_bi', ''),
(418, 510, 43, 0, 1, 0, 'http://img6.baixing.net/e614091df94c71da8a989257375ee08d.jpg_bi', ''),
(419, 511, 43, 0, 1, 0, 'http://img4.baixing.net/f7b316d301cace53743acc5e117914d7.jpg_bi', ''),
(420, 512, 43, 0, 1, 0, 'http://img6.baixing.net/544eb83240f6662e3ec1a6e6cbcc7e3a.jpg_bi', ''),
(421, 513, 43, 0, 1, 0, 'http://img4.baixing.net/c1a8386063a9f98818cde679ba518e50.jpg_bi', ''),
(422, 514, 43, 0, 1, 0, 'http://img4.baixing.net/cdba13944912e76943ea09c4b53d3b84.jpg_bi', ''),
(423, 516, 43, 0, 1, 0, 'http://img4.baixing.net/09814fc6d3ecc2f6fcac10d2f2baa94c.jpg_bi', ''),
(424, 517, 43, 0, 1, 0, 'http://img5.baixing.net/426f6c7070e24ff2d3f1c0d946d2e9da.jpg_bi', ''),
(425, 519, 43, 0, 1, 0, 'http://img6.baixing.net/81b0767ebd69a9487eb132157a2c8542.jpg_bi', ''),
(426, 520, 43, 0, 1, 0, 'http://img6.baixing.net/86d4ce608f5940ac5b817933a3a731aa.jpg_bi', ''),
(427, 521, 43, 0, 1, 0, 'http://img4.baixing.net/9271d72450b063b3f807dd489fa7f044.jpg_bi', ''),
(428, 522, 43, 0, 1, 0, 'http://img4.baixing.net/3845b810ce57ebbe7416f67115a506e3.jpg_bi', ''),
(429, 523, 43, 0, 1, 0, 'http://img4.baixing.net/91cadd1fd1e2c7e354f66b3ada22b7eb.jpg_bi', ''),
(430, 525, 43, 0, 1, 0, 'http://img5.baixing.net/d950a271c171a748c750637be0d8d91e.jpg_bi', ''),
(431, 526, 43, 0, 1, 0, 'http://img1.baixing.net/m/3e45fe49585ef2c9ae27eb810123caa0.jpg', ''),
(432, 527, 43, 0, 1, 0, 'http://img5.baixing.net/d950a271c171a748c750637be0d8d91e.jpg_bi', ''),
(433, 528, 43, 0, 1, 0, 'http://img5.baixing.net/ac44505041f3a6f2636ca0f928d0700c.jpg_bi', ''),
(434, 530, 43, 0, 1, 0, 'http://img4.baixing.net/f614789c1ec92ee444a3f3804027e45f.jpg_bi', ''),
(435, 531, 43, 0, 1, 0, 'http://img6.baixing.net/b537567bba13d23b714e4dc57d257fe3.jpg_bi', ''),
(436, 533, 43, 0, 1, 0, 'http://img6.baixing.net/ece6a08db5bf05e5cfc1a131bdcfde30.jpg_bi', ''),
(437, 534, 43, 0, 1, 0, 'http://img2.baixing.net/m/1518c6e6b7f5498cc18da0dcba05da2b.jpg', ''),
(438, 535, 43, 0, 1, 0, 'http://img6.baixing.net/80d35c998758232efd9463d71d34c1df.jpg_bi', ''),
(439, 537, 43, 0, 1, 0, 'http://img6.baixing.net/23053d500b1f4e94ee707c52a8993bc2.jpg_bi', ''),
(440, 538, 43, 0, 1, 0, 'http://img4.baixing.net/390f26832e20be94c85552a7dc9f48a6.jpg_bi', ''),
(441, 542, 43, 0, 1, 0, 'http://img5.baixing.net/1a049caadb76c42ff2188f7b73303be5.jpg_bi', ''),
(442, 543, 43, 0, 1, 0, 'http://img4.baixing.net/fbc286a793d7fb2d8b5336463c5221b2.jpg_bi', ''),
(443, 544, 43, 0, 1, 0, 'http://img5.baixing.net/dad0e133cc11acc98f7c2c15e23557d5.jpg_bi', ''),
(444, 545, 43, 0, 1, 0, 'http://img6.baixing.net/89c775fe75ff69325d0172dee5c4e201.jpg_bi', ''),
(445, 547, 43, 0, 1, 0, 'http://img5.baixing.net/d524c6fb9474bfcbb28cfe96daf37e33.jpg_bi', ''),
(446, 548, 43, 0, 1, 0, 'http://img4.baixing.net/07dca323ea6d073d8f089cbb74fd1bb3.jpg_bi', ''),
(447, 549, 43, 0, 1, 0, 'http://img4.baixing.net/015fb13a3076993369fae09963949721.jpg_bi', ''),
(448, 550, 43, 0, 1, 0, 'http://img6.baixing.net/e0f3e515f872b091722246956dd56fbe.jpg_bi', ''),
(449, 551, 43, 0, 1, 0, 'http://img3.baixing.net/m/b353d66ce86c6b6bbc6911f4ca474c33.jpg', ''),
(450, 552, 43, 0, 1, 0, 'http://img6.baixing.net/843d392fbce281cc52038245cfbb35fa.jpg_bi', ''),
(451, 553, 43, 0, 1, 0, 'http://img5.baixing.net/d1b5bb9ecfdedeb90a9df09e0b194135.jpg_bi', ''),
(452, 554, 43, 0, 1, 0, 'http://img6.baixing.net/e21c5887c3be6745aef4d182d4eb3f78.jpg_bi', ''),
(453, 555, 43, 0, 1, 0, 'http://img4.baixing.net/f13598b741c9784616b4a8f66fc33e72.jpg_bi', ''),
(454, 557, 43, 0, 1, 0, 'http://img4.baixing.net/354d79202825468d1e3c34739225996f.jpg_bi', ''),
(455, 558, 43, 0, 1, 0, 'http://img4.baixing.net/931a2b6f83d10dc3d18978fcc9b772ce.jpg_bi', ''),
(456, 559, 43, 0, 1, 0, 'http://img4.baixing.net/05396ff8e6fca378fadbfada33afb0ef.jpg_bi', ''),
(457, 561, 43, 0, 1, 0, 'http://img6.baixing.net/5d373ad6348fdfefb678da128178f967.jpg_bi', ''),
(458, 563, 43, 0, 1, 0, 'http://img6.baixing.net/e28a08094b6c0dc5bbfcfb2757540dd5.jpg_bi', ''),
(459, 564, 43, 0, 1, 0, 'http://img6.baixing.net/be9bd41c36a1c360d1bf37277250227f.jpg_bi', ''),
(460, 565, 43, 0, 1, 0, 'http://img4.baixing.net/fe1dc5b9cd43346908c5550f42e59713.jpg_bi', ''),
(461, 566, 43, 0, 1, 0, 'http://img6.baixing.net/5dfe22fb1d7b5760bc8cfee8c88a8eab.jpg_bi', ''),
(462, 567, 43, 0, 1, 0, 'http://img6.baixing.net/e063200e4d4a677f1da04b4737c93c94.jpg_bi', ''),
(463, 569, 43, 0, 1, 0, 'http://img6.baixing.net/ec74d9837332ad205883bd8f5d31a17a.jpg_bi', ''),
(464, 570, 43, 0, 1, 0, 'http://img4.baixing.net/305c8f441623740a0e9a8058b559b3cc.jpg_bi', ''),
(465, 571, 43, 0, 1, 0, 'http://img4.baixing.net/c986f66c5cfd84b31fdea1acfaf56db3.jpg_bi', ''),
(466, 572, 43, 0, 1, 0, 'http://img4.baixing.net/9afe22cf34a6a0fa2b7be43d33cb9323.jpg_bi', ''),
(467, 573, 43, 0, 1, 0, 'http://img1.baixing.net/m/9b9483646143eeda04b9828e0ec1d7b8.jpg', ''),
(468, 574, 43, 0, 1, 0, 'http://img4.baixing.net/cf1fb870e436bf6cabe420692a304cb5.jpg_bi', ''),
(469, 575, 43, 0, 1, 0, 'http://img6.baixing.net/83d08b2e8becf994f4471ad9ccf1bc0e.jpg_bi', ''),
(470, 576, 43, 0, 1, 0, 'http://img5.baixing.net/76711d741b9d6d4033c6d61fc9ea98bd.jpg_bi', ''),
(471, 578, 43, 0, 1, 0, 'http://img5.baixing.net/4ef91368947e6162d744dbd37cadf7e8.jpg_bi', ''),
(472, 579, 43, 0, 1, 0, 'http://img4.baixing.net/6f34b6eb4f0f833e949bc680d7d88972.jpg_bi', ''),
(473, 580, 43, 0, 1, 0, 'http://img2.baixing.net/m/da39550aef2bf712f67d1c86fc87084e.jpg', ''),
(474, 581, 43, 0, 1, 0, 'http://img4.baixing.net/073683d125ceb9842640cbd712cf7a02.jpg_bi', ''),
(475, 582, 43, 0, 1, 0, 'http://img4.baixing.net/676e5ae716f88ce3c9b87fa3703b4cfb.jpg_bi', ''),
(476, 583, 43, 0, 1, 0, 'http://img4.baixing.net/99dc3ace9fb7823899fcdae1aa79eec5.jpg_bi', ''),
(477, 584, 43, 0, 1, 0, 'http://img5.baixing.net/45feaa8ae2b5f88e4d3c397f801db525.jpg_bi', ''),
(478, 585, 43, 0, 1, 0, 'http://img5.baixing.net/7475a8cf65343a1797f3c4c07c8ddb87.jpg_bi', ''),
(479, 586, 43, 0, 1, 0, 'http://img4.baixing.net/3f1e96befe18047e331c7cf0d8c70ee6.jpg_bi', ''),
(480, 587, 43, 0, 1, 0, 'http://img6.baixing.net/522f016eb3619eb5efa254d314f746a9.jpg_bi', ''),
(481, 588, 43, 0, 1, 0, 'http://img6.baixing.net/ed29fb297bbba93874fc552a3630e777.jpg_bi', ''),
(482, 590, 43, 0, 1, 0, 'http://img5.baixing.net/ab13186fc8a76b738211ed8c34dfbf7d.jpg_bi', ''),
(483, 592, 43, 0, 1, 0, 'http://img5.baixing.net/48e1931b5cf7e075ba98ca7f06d05189.jpg_bi', ''),
(484, 593, 43, 0, 1, 0, 'http://img5.baixing.net/44cc5467399ddf062d7bdbfabbf9c838.jpg_bi', ''),
(485, 594, 43, 0, 1, 0, 'http://img4.baixing.net/fbc286a793d7fb2d8b5336463c5221b2.jpg_bi', ''),
(486, 595, 43, 0, 1, 0, 'http://img3.baixing.net/m/82857bf2370c1e49b9238b87bc9c9bee.jpg', ''),
(487, 596, 43, 0, 1, 0, 'http://img1.baixing.net/m/95ec2717d57a20484503918ad43afd6d.jpg', ''),
(488, 597, 43, 0, 1, 0, 'http://img6.baixing.net/86d4ce608f5940ac5b817933a3a731aa.jpg_bi', ''),
(489, 598, 43, 0, 1, 0, 'http://img5.baixing.net/d89da6f88fa2c9f89d5762ea17c24469.jpg_bi', ''),
(490, 599, 43, 0, 1, 0, 'http://img4.baixing.net/91cadd1fd1e2c7e354f66b3ada22b7eb.jpg_bi', ''),
(491, 600, 43, 0, 1, 0, 'http://img4.baixing.net/9271d72450b063b3f807dd489fa7f044.jpg_bi', ''),
(492, 602, 43, 0, 1, 0, 'http://img5.baixing.net/12a941cba2eddb0d5aa9dbe7d794048d.jpg_bi', ''),
(493, 604, 43, 0, 1, 0, 'http://img6.baixing.net/5e20dde39387c22daad3996975c1b658.jpg_bi', ''),
(494, 605, 43, 0, 1, 0, 'http://img2.baixing.net/m/46061ca4ae7ab1fe6c0f1784fd21415c.jpg', ''),
(495, 606, 43, 0, 1, 0, 'http://img5.baixing.net/adb3cd44093d8c772b231bd68e023101.jpg_bi', ''),
(496, 607, 43, 0, 1, 0, 'http://img4.baixing.net/666341f446f3f499e35435fb74899566.jpg_bi', ''),
(497, 608, 43, 0, 1, 0, 'http://img5.baixing.net/ac1cbb968cb26b2b56801fb5952f4df9.jpg_bi', ''),
(498, 611, 43, 0, 1, 0, 'http://img4.baixing.net/0c595a75f26a9cf203f9e49039105a3d.jpg_bi', ''),
(499, 612, 43, 0, 1, 0, 'http://img2.baixing.net/m/1dec50ae825a19a9d784ad4a91106b05.jpg', ''),
(500, 613, 43, 0, 1, 0, 'http://img4.baixing.net/f7b316d301cace53743acc5e117914d7.jpg_bi', ''),
(501, 614, 43, 0, 1, 0, 'http://img6.baixing.net/e614091df94c71da8a989257375ee08d.jpg_bi', ''),
(502, 615, 43, 0, 1, 0, 'http://img4.baixing.net/c8b7d44b9d861e24c01200d8929dfaef.jpg_bi', ''),
(503, 616, 43, 0, 1, 0, 'http://img4.baixing.net/cdba13944912e76943ea09c4b53d3b84.jpg_bi', ''),
(504, 617, 43, 0, 1, 0, 'http://img6.baixing.net/544eb83240f6662e3ec1a6e6cbcc7e3a.jpg_bi', ''),
(505, 618, 43, 0, 1, 0, 'http://img4.baixing.net/c1a8386063a9f98818cde679ba518e50.jpg_bi', ''),
(506, 619, 43, 0, 1, 0, 'http://img5.baixing.net/426f6c7070e24ff2d3f1c0d946d2e9da.jpg_bi', ''),
(507, 621, 43, 0, 1, 0, 'http://img4.baixing.net/09814fc6d3ecc2f6fcac10d2f2baa94c.jpg_bi', ''),
(508, 622, 43, 0, 1, 0, 'http://img5.baixing.net/d950a271c171a748c750637be0d8d91e.jpg_bi', ''),
(509, 624, 43, 0, 1, 0, 'http://img6.baixing.net/81b0767ebd69a9487eb132157a2c8542.jpg_bi', ''),
(510, 625, 43, 0, 1, 0, 'http://img5.baixing.net/d950a271c171a748c750637be0d8d91e.jpg_bi', ''),
(511, 626, 43, 0, 1, 0, 'http://img4.baixing.net/fbc286a793d7fb2d8b5336463c5221b2.jpg_bi', ''),
(512, 627, 43, 0, 1, 0, 'http://img4.baixing.net/3845b810ce57ebbe7416f67115a506e3.jpg_bi', ''),
(513, 628, 43, 0, 1, 0, 'http://img1.baixing.net/m/3e45fe49585ef2c9ae27eb810123caa0.jpg', ''),
(514, 629, 43, 0, 1, 0, 'http://img6.baixing.net/89c775fe75ff69325d0172dee5c4e201.jpg_bi', ''),
(515, 631, 43, 0, 1, 0, 'http://img5.baixing.net/ac44505041f3a6f2636ca0f928d0700c.jpg_bi', ''),
(516, 632, 43, 0, 1, 0, 'http://img6.baixing.net/b537567bba13d23b714e4dc57d257fe3.jpg_bi', ''),
(517, 633, 43, 0, 1, 0, 'http://img4.baixing.net/f614789c1ec92ee444a3f3804027e45f.jpg_bi', ''),
(518, 634, 43, 0, 1, 0, 'http://img6.baixing.net/ece6a08db5bf05e5cfc1a131bdcfde30.jpg_bi', ''),
(519, 636, 43, 0, 1, 0, 'http://img6.baixing.net/80d35c998758232efd9463d71d34c1df.jpg_bi', ''),
(520, 637, 43, 0, 1, 0, 'http://img2.baixing.net/m/1518c6e6b7f5498cc18da0dcba05da2b.jpg', ''),
(521, 638, 43, 0, 1, 0, 'http://img6.baixing.net/23053d500b1f4e94ee707c52a8993bc2.jpg_bi', ''),
(522, 641, 43, 0, 1, 0, 'http://img4.baixing.net/390f26832e20be94c85552a7dc9f48a6.jpg_bi', ''),
(523, 644, 43, 0, 1, 0, 'http://img5.baixing.net/1a049caadb76c42ff2188f7b73303be5.jpg_bi', ''),
(524, 645, 43, 0, 1, 0, 'http://img5.baixing.net/dad0e133cc11acc98f7c2c15e23557d5.jpg_bi', ''),
(525, 648, 43, 0, 1, 0, 'http://img1.baixing.net/m/9b9483646143eeda04b9828e0ec1d7b8.jpg', ''),
(526, 649, 43, 0, 1, 0, 'http://img4.baixing.net/c986f66c5cfd84b31fdea1acfaf56db3.jpg_bi', ''),
(527, 650, 43, 0, 1, 0, 'http://img5.baixing.net/d524c6fb9474bfcbb28cfe96daf37e33.jpg_bi', ''),
(528, 651, 43, 0, 1, 0, 'http://img5.baixing.net/76711d741b9d6d4033c6d61fc9ea98bd.jpg_bi', ''),
(529, 652, 43, 0, 1, 0, 'http://img4.baixing.net/07dca323ea6d073d8f089cbb74fd1bb3.jpg_bi', ''),
(530, 653, 43, 0, 1, 0, 'http://img4.baixing.net/015fb13a3076993369fae09963949721.jpg_bi', ''),
(531, 654, 43, 0, 1, 0, 'http://img6.baixing.net/e0f3e515f872b091722246956dd56fbe.jpg_bi', ''),
(532, 655, 43, 0, 1, 0, 'http://img3.baixing.net/m/b353d66ce86c6b6bbc6911f4ca474c33.jpg', ''),
(533, 656, 43, 0, 1, 0, 'http://img6.baixing.net/843d392fbce281cc52038245cfbb35fa.jpg_bi', ''),
(534, 657, 43, 0, 1, 0, 'http://img5.baixing.net/d1b5bb9ecfdedeb90a9df09e0b194135.jpg_bi', ''),
(535, 658, 43, 0, 1, 0, 'http://img6.baixing.net/e21c5887c3be6745aef4d182d4eb3f78.jpg_bi', ''),
(536, 659, 43, 0, 1, 0, 'http://img4.baixing.net/f13598b741c9784616b4a8f66fc33e72.jpg_bi', ''),
(537, 661, 43, 0, 1, 0, 'http://img4.baixing.net/354d79202825468d1e3c34739225996f.jpg_bi', ''),
(538, 662, 43, 0, 1, 0, 'http://img4.baixing.net/931a2b6f83d10dc3d18978fcc9b772ce.jpg_bi', ''),
(539, 663, 43, 0, 1, 0, 'http://img4.baixing.net/05396ff8e6fca378fadbfada33afb0ef.jpg_bi', ''),
(540, 665, 43, 0, 1, 0, 'http://img6.baixing.net/5d373ad6348fdfefb678da128178f967.jpg_bi', ''),
(541, 667, 43, 0, 1, 0, 'http://img6.baixing.net/e28a08094b6c0dc5bbfcfb2757540dd5.jpg_bi', ''),
(542, 668, 43, 0, 1, 0, 'http://img6.baixing.net/be9bd41c36a1c360d1bf37277250227f.jpg_bi', ''),
(543, 669, 43, 0, 1, 0, 'http://img4.baixing.net/fe1dc5b9cd43346908c5550f42e59713.jpg_bi', ''),
(544, 670, 43, 0, 1, 0, 'http://img6.baixing.net/5dfe22fb1d7b5760bc8cfee8c88a8eab.jpg_bi', ''),
(545, 671, 43, 0, 1, 0, 'http://img6.baixing.net/e063200e4d4a677f1da04b4737c93c94.jpg_bi', ''),
(546, 672, 43, 0, 1, 0, 'http://img4.baixing.net/9afe22cf34a6a0fa2b7be43d33cb9323.jpg_bi', ''),
(547, 673, 43, 0, 1, 0, 'http://img6.baixing.net/ec74d9837332ad205883bd8f5d31a17a.jpg_bi', ''),
(548, 674, 43, 0, 1, 0, 'http://img4.baixing.net/305c8f441623740a0e9a8058b559b3cc.jpg_bi', ''),
(549, 675, 43, 0, 1, 0, 'http://img6.baixing.net/83d08b2e8becf994f4471ad9ccf1bc0e.jpg_bi', ''),
(550, 677, 43, 0, 1, 0, 'http://img4.baixing.net/cf1fb870e436bf6cabe420692a304cb5.jpg_bi', ''),
(551, 678, 43, 0, 1, 0, 'http://img5.baixing.net/44cc5467399ddf062d7bdbfabbf9c838.jpg_bi', ''),
(552, 680, 43, 0, 1, 0, 'http://img5.baixing.net/4ef91368947e6162d744dbd37cadf7e8.jpg_bi', ''),
(553, 681, 43, 0, 1, 0, 'http://img4.baixing.net/6f34b6eb4f0f833e949bc680d7d88972.jpg_bi', ''),
(554, 682, 43, 0, 1, 0, 'http://img2.baixing.net/m/da39550aef2bf712f67d1c86fc87084e.jpg', ''),
(555, 683, 43, 0, 1, 0, 'http://img4.baixing.net/073683d125ceb9842640cbd712cf7a02.jpg_bi', ''),
(556, 684, 43, 0, 1, 0, 'http://img4.baixing.net/676e5ae716f88ce3c9b87fa3703b4cfb.jpg_bi', ''),
(557, 685, 43, 0, 1, 0, 'http://img4.baixing.net/99dc3ace9fb7823899fcdae1aa79eec5.jpg_bi', ''),
(558, 686, 43, 0, 1, 0, 'http://img5.baixing.net/45feaa8ae2b5f88e4d3c397f801db525.jpg_bi', ''),
(559, 687, 43, 0, 1, 0, 'http://img5.baixing.net/7475a8cf65343a1797f3c4c07c8ddb87.jpg_bi', ''),
(560, 688, 43, 0, 1, 0, 'http://img4.baixing.net/3f1e96befe18047e331c7cf0d8c70ee6.jpg_bi', ''),
(561, 689, 43, 0, 1, 0, 'http://img6.baixing.net/522f016eb3619eb5efa254d314f746a9.jpg_bi', ''),
(562, 690, 43, 0, 1, 0, 'http://img6.baixing.net/ed29fb297bbba93874fc552a3630e777.jpg_bi', ''),
(563, 692, 43, 0, 1, 0, 'http://img5.baixing.net/ab13186fc8a76b738211ed8c34dfbf7d.jpg_bi', ''),
(564, 693, 43, 0, 1, 0, 'http://img5.baixing.net/48e1931b5cf7e075ba98ca7f06d05189.jpg_bi', ''),
(565, 694, 43, 0, 1, 0, 'http://img5.baixing.net/12a941cba2eddb0d5aa9dbe7d794048d.jpg_bi', ''),
(566, 695, 43, 0, 1, 0, 'http://img5.baixing.net/426f6c7070e24ff2d3f1c0d946d2e9da.jpg_bi', ''),
(567, 696, 43, 0, 1, 0, 'http://img6.baixing.net/e614091df94c71da8a989257375ee08d.jpg_bi', ''),
(568, 697, 43, 0, 1, 0, 'http://img5.baixing.net/d89da6f88fa2c9f89d5762ea17c24469.jpg_bi', ''),
(569, 698, 43, 0, 1, 0, 'http://img5.baixing.net/ac1cbb968cb26b2b56801fb5952f4df9.jpg_bi', ''),
(570, 699, 43, 0, 1, 0, 'http://img6.baixing.net/544eb83240f6662e3ec1a6e6cbcc7e3a.jpg_bi', ''),
(571, 700, 43, 0, 1, 0, 'http://img5.baixing.net/d950a271c171a748c750637be0d8d91e.jpg_bi', ''),
(572, 701, 43, 0, 1, 0, 'http://img6.baixing.net/81b0767ebd69a9487eb132157a2c8542.jpg_bi', ''),
(573, 702, 43, 0, 1, 0, 'http://img5.baixing.net/adb3cd44093d8c772b231bd68e023101.jpg_bi', ''),
(574, 703, 43, 0, 1, 0, 'http://img5.baixing.net/1a049caadb76c42ff2188f7b73303be5.jpg_bi', ''),
(575, 704, 43, 0, 1, 0, 'http://img6.baixing.net/ece6a08db5bf05e5cfc1a131bdcfde30.jpg_bi', ''),
(576, 705, 43, 0, 1, 0, 'http://img6.baixing.net/89c775fe75ff69325d0172dee5c4e201.jpg_bi', ''),
(606, 792, 43, 0, 1, 0, 'http://img5.baixing.net/df304595edbf16cd99604d6501f0b847.jpg_bi', ''),
(578, 707, 43, 0, 1, 0, 'http://img5.baixing.net/d1b5bb9ecfdedeb90a9df09e0b194135.jpg_bi', ''),
(579, 708, 43, 0, 1, 0, 'http://img6.baixing.net/23053d500b1f4e94ee707c52a8993bc2.jpg_bi', ''),
(580, 709, 43, 0, 1, 0, 'http://img6.baixing.net/5d373ad6348fdfefb678da128178f967.jpg_bi', ''),
(581, 710, 43, 0, 1, 0, 'http://img5.baixing.net/d524c6fb9474bfcbb28cfe96daf37e33.jpg_bi', ''),
(582, 711, 43, 0, 1, 0, 'http://img6.baixing.net/e063200e4d4a677f1da04b4737c93c94.jpg_bi', ''),
(583, 712, 43, 0, 1, 0, 'http://img6.baixing.net/843d392fbce281cc52038245cfbb35fa.jpg_bi', ''),
(584, 713, 43, 0, 1, 0, 'http://img6.baixing.net/e0f3e515f872b091722246956dd56fbe.jpg_bi', ''),
(585, 714, 43, 0, 1, 0, 'http://img5.baixing.net/44cc5467399ddf062d7bdbfabbf9c838.jpg_bi', ''),
(586, 715, 43, 0, 1, 0, 'http://img6.baixing.net/be9bd41c36a1c360d1bf37277250227f.jpg_bi', ''),
(587, 716, 43, 0, 1, 0, 'http://img5.baixing.net/4ef91368947e6162d744dbd37cadf7e8.jpg_bi', ''),
(588, 717, 43, 0, 1, 0, 'http://img6.baixing.net/e21c5887c3be6745aef4d182d4eb3f78.jpg_bi', ''),
(589, 718, 43, 0, 1, 0, 'http://img5.baixing.net/76711d741b9d6d4033c6d61fc9ea98bd.jpg_bi', '');
INSERT INTO `qb_fenlei_pic` (`pid`, `id`, `fid`, `mid`, `uid`, `type`, `imgurl`, `name`) VALUES
(590, 719, 43, 0, 1, 0, 'http://img5.baixing.net/45feaa8ae2b5f88e4d3c397f801db525.jpg_bi', ''),
(591, 720, 43, 0, 1, 0, 'http://img6.baixing.net/5dfe22fb1d7b5760bc8cfee8c88a8eab.jpg_bi', ''),
(592, 721, 43, 0, 1, 0, 'http://img6.baixing.net/ec74d9837332ad205883bd8f5d31a17a.jpg_bi', ''),
(593, 722, 43, 0, 1, 0, 'http://img5.baixing.net/ab13186fc8a76b738211ed8c34dfbf7d.jpg_bi', ''),
(594, 723, 43, 0, 1, 0, 'http://img6.baixing.net/5e20dde39387c22daad3996975c1b658.jpg_bi', ''),
(595, 724, 43, 0, 1, 0, 'http://img5.baixing.net/7475a8cf65343a1797f3c4c07c8ddb87.jpg_bi', ''),
(596, 725, 43, 0, 1, 0, 'http://img6.baixing.net/86d4ce608f5940ac5b817933a3a731aa.jpg_bi', ''),
(597, 726, 43, 0, 1, 0, 'http://img5.baixing.net/48e1931b5cf7e075ba98ca7f06d05189.jpg_bi', ''),
(598, 727, 43, 0, 1, 0, 'http://img5.baixing.net/d950a271c171a748c750637be0d8d91e.jpg_bi', ''),
(599, 728, 43, 0, 1, 0, 'http://img6.baixing.net/b537567bba13d23b714e4dc57d257fe3.jpg_bi', ''),
(600, 729, 43, 0, 1, 0, 'http://img6.baixing.net/80d35c998758232efd9463d71d34c1df.jpg_bi', ''),
(601, 730, 43, 0, 1, 0, 'http://img5.baixing.net/ac44505041f3a6f2636ca0f928d0700c.jpg_bi', ''),
(602, 731, 43, 0, 1, 0, 'http://img6.baixing.net/e28a08094b6c0dc5bbfcfb2757540dd5.jpg_bi', ''),
(603, 732, 43, 0, 1, 0, 'http://img6.baixing.net/83d08b2e8becf994f4471ad9ccf1bc0e.jpg_bi', ''),
(604, 733, 43, 0, 1, 0, 'http://img6.baixing.net/522f016eb3619eb5efa254d314f746a9.jpg_bi', ''),
(605, 734, 43, 0, 1, 0, 'http://img6.baixing.net/ed29fb297bbba93874fc552a3630e777.jpg_bi', ''),
(607, 797, 43, 0, 1, 0, 'http://img6.baixing.net/275788332bba8ae690f522971acc764b.jpg_bi', ''),
(608, 804, 43, 0, 1, 0, 'http://img6.baixing.net/8cb2b4dd013799e68b83ca9d3d828728.jpg_bi', ''),
(609, 805, 43, 0, 1, 0, 'http://img5.baixing.net/d5cd03a397ca626643b6c1c14452c220.jpg_bi', ''),
(610, 807, 43, 0, 1, 0, 'http://img6.baixing.net/5945fbd2da46881ae195d7950fa45e0e.jpg_bi', ''),
(611, 810, 43, 0, 1, 0, 'http://img6.baixing.net/55be795d3e6ee1ad87f9e39e629726a5.jpg_bi', ''),
(612, 811, 43, 0, 1, 0, 'http://img6.baixing.net/e4381a8396b2432d64b7acaac0d92c9c.jpg_bi', ''),
(613, 812, 43, 0, 1, 0, 'http://img5.baixing.net/4c00f38ace16c05ba8fb7081860f4c52.jpg_bi', ''),
(614, 814, 43, 0, 1, 0, 'http://img5.baixing.net/47dcce6d9dbbba6c98fe15ba71185139.jpg_bi', ''),
(615, 819, 43, 0, 1, 0, 'http://img6.baixing.net/b7175c96b99f7a1689f5b6abbd5c28de.jpg_bi', ''),
(616, 820, 43, 0, 1, 0, 'http://img6.baixing.net/2305d4bf7570360d546997c03b858412.jpg_bi', ''),
(617, 824, 43, 0, 1, 0, 'http://img5.baixing.net/7f2aeaf8a084d5ffcf1c59d870b1c38a.jpg_bi', ''),
(618, 825, 43, 0, 1, 0, 'http://img5.baixing.net/73bd5c685037455aa3f3e8e0d062c6ef.jpg_bi', ''),
(619, 826, 43, 0, 1, 0, 'http://img5.baixing.net/43550649517f3c8f7326b51141d68de9.jpg_bi', ''),
(620, 828, 43, 0, 1, 0, 'http://img5.baixing.net/41773457fb7bce4aff2017c2a2f5e64b.jpg_bi', ''),
(621, 830, 43, 0, 1, 0, 'http://img6.baixing.net/8d099369ccfc3b46499f34cd1141a5f6.jpg_bi', ''),
(622, 832, 43, 0, 1, 0, 'http://img5.baixing.net/4f8e91d381d378f8a0fa36b2c6749781.jpg_bi', ''),
(623, 834, 43, 0, 1, 0, 'http://img6.baixing.net/5ec94c42b9b837981f56f71b0d26f680.jpg_bi', ''),
(624, 835, 43, 0, 1, 0, 'http://img6.baixing.net/8ab95003affb3c0236d81c666585fdb9.jpg_bi', ''),
(625, 836, 43, 0, 1, 0, 'http://img5.baixing.net/7319e3eb89c81afc86cf19e48175e50b.jpg_bi', ''),
(626, 837, 43, 0, 1, 0, 'http://img5.baixing.net/42addf07cf499682e88e8849e55255fd.jpg_bi', ''),
(627, 838, 43, 0, 1, 0, 'http://img6.baixing.net/bf965d144b4bd7fc294fed8e42cecaf0.jpg_bi', ''),
(628, 839, 43, 0, 1, 0, 'http://img6.baixing.net/83ba4ac55e43bc7c35269ac48d9a6401.jpg_bi', ''),
(629, 841, 43, 0, 1, 0, 'http://img5.baixing.net/d760a3c53b83bccd4cd08ca5acddaa0f.jpg_bi', ''),
(630, 843, 43, 0, 1, 0, 'http://img6.baixing.net/b43377cf1e4737788b1bc3dc1c72a9ef.jpg_bi', ''),
(631, 846, 43, 0, 1, 0, 'http://img5.baixing.net/a5d8e19238eb4465aa9093b2b180e540.jpg_bi', ''),
(632, 847, 43, 0, 1, 0, 'http://img5.baixing.net/7565916decbc18c5870d1fde4f446343.jpg_bi', ''),
(633, 848, 43, 0, 1, 0, 'http://img6.baixing.net/25b669bf2dfe9e4eda084cd1a04f0d55.jpg_bi', ''),
(634, 850, 43, 0, 1, 0, 'http://img5.baixing.net/49f2edbbc446cb87756daf1e6a7fad0f.jpg_bi', ''),
(635, 852, 43, 0, 1, 0, 'http://img6.baixing.net/27659cfe6f139411ffe0deb54128e000.jpg_bi', ''),
(636, 853, 43, 0, 1, 0, 'http://img5.baixing.net/114560bfa015bfca01c5b87dd9dd7e3d.jpg_bi', ''),
(637, 856, 43, 0, 1, 0, 'http://img5.baixing.net/adaf308caf1ba78164ed2a50281cdabc.jpg_bi', ''),
(638, 859, 43, 0, 1, 0, 'http://img6.baixing.net/8456f49c1238837c5a1e51def644afd6.jpg_bi', ''),
(639, 860, 43, 0, 1, 0, 'http://img5.baixing.net/da15962f0409133d6ced2342200cf524.jpg_bi', ''),
(640, 863, 43, 0, 1, 0, 'http://img5.baixing.net/4aaba186fb0129d9d419161ed999aec9.jpg_bi', ''),
(641, 864, 43, 0, 1, 0, 'http://img5.baixing.net/43fab44d3cafd923a4f73cfe9f2c7077.jpg_bi', ''),
(642, 865, 43, 0, 1, 0, 'http://img5.baixing.net/a587784d9d476a0c0ff48b81d203db15.jpg_bi', ''),
(643, 867, 43, 0, 1, 0, 'http://img5.baixing.net/46bd07b68868d5965da3aeda7deadd9f.jpg_bi', ''),
(644, 871, 43, 0, 1, 0, 'http://img6.baixing.net/ed1aae287e22c91b71ce1a76d9b51310.jpg_bi', ''),
(645, 874, 43, 0, 1, 0, 'http://img5.baixing.net/d04253e948eb8010f84fca4f90b60ad8.jpg_bi', ''),
(646, 875, 43, 0, 1, 0, 'http://img6.baixing.net/86908a3b358434227c2380c5bb72e2c7.jpg_bi', ''),
(647, 877, 43, 0, 1, 0, 'http://img5.baixing.net/abe5949ffd692e08d5655323ce54f0d5.jpg_bi', ''),
(648, 879, 43, 0, 1, 0, 'http://img6.baixing.net/ee2371dbcd633912dec53b6841809b53.jpg_bi', ''),
(649, 883, 43, 0, 1, 0, 'http://img6.baixing.net/8bd5dc5f1654af515c91192bc0c4c56e.jpg_bi', ''),
(650, 885, 43, 0, 1, 0, 'http://img6.baixing.net/e22aa4b2d9592c784589ac51e7b017a5.jpg_bi', ''),
(651, 886, 43, 0, 1, 0, 'http://img5.baixing.net/1fcc93eb02cbfcd8b51081cb5e9b8820.jpg_bi', ''),
(652, 102, 42, 0, 1, 0, 'qb_fenlei_/25/1_20130804160816_su9id.jpg', ''),
(653, 102, 42, 0, 1, 0, 'qb_fenlei_/174/1_20130804170809_yicta.jpg', ''),
(654, 102, 42, 0, 1, 0, 'qb_fenlei_/173/1_20130804160804_uaasu.jpg', ''),
(655, 102, 42, 0, 1, 0, 'qb_fenlei_/176/1_20130804220854_chomx.jpg', ''),
(656, 102, 42, 0, 1, 0, 'qb_fenlei_/176/1_20130804220854_chomx.jpg', ''),
(657, 888, 42, 0, 1, 0, 'http://img6.baixing.net/5bf40ad1aee51e9f3119c44006dbcb0a.jpg_bi', ''),
(658, 889, 42, 0, 1, 0, 'http://img5.baixing.net/dc8fb3d41efd088c7f34b0b0b6e28ca5.jpg_bi', ''),
(659, 895, 42, 0, 1, 0, 'http://img5.baixing.net/72770b4972c43110af5094c7d942a4aa.jpg_bi', ''),
(660, 898, 42, 0, 1, 0, 'http://img5.baixing.net/4582d86faf9b0a1018699f1f733d3496.jpg_bi', ''),
(661, 903, 42, 0, 1, 0, 'http://img6.baixing.net/8ff0018bbe0f9cefdfe4fcc1e30c603d.jpg_bi', ''),
(662, 904, 42, 0, 1, 0, 'http://img6.baixing.net/e69b73e62de1d557b9d2ad80d4e6fdd5.jpg_bi', ''),
(663, 905, 42, 0, 1, 0, 'http://img6.baixing.net/e4e9a609ae2a6f1a244c5a69b6367f03.jpg_bi', ''),
(664, 907, 42, 0, 1, 0, 'http://img5.baixing.net/a22d3e37a2a953676cacfdc54e64177a.jpg_bi', ''),
(665, 908, 42, 0, 1, 0, 'http://img5.baixing.net/12568463ae0b28cde4ddc92583ca23d8.jpg_bi', ''),
(666, 909, 42, 0, 1, 0, 'http://img6.baixing.net/b6c176cbc5ad11fbaa1c75fe17d53c68.jpg_bi', ''),
(667, 912, 42, 0, 1, 0, 'http://img5.baixing.net/d03c96d2edd87e176e87f8958a106540.jpg_bi', ''),
(668, 927, 42, 0, 1, 0, 'http://img6.baixing.net/248046a1688bb0cd6c35dbb194bf0de5.jpg_bi', ''),
(669, 928, 42, 0, 1, 0, 'http://img5.baixing.net/d47b2d7c25086992413c04dca5c1ee18.jpg_bi', ''),
(670, 931, 42, 0, 1, 0, 'http://img5.baixing.net/7c7be71d09b1863728653fe52cd93e9f.jpg_bi', ''),
(671, 944, 42, 0, 1, 0, 'http://img6.baixing.net/5869ce43b05c62443b7c301fa4d5cf30.jpg_bi', ''),
(672, 951, 42, 0, 1, 0, 'http://img6.baixing.net/52e3a9de3eaa37f5cd2f15e6c4aca5d1.jpg_bi', ''),
(673, 953, 43, 0, 1, 0, 'fenlei/43/1_20140426160429_xnssu.jpg', ''),
(674, 954, 43, 0, 1, 0, 'fenlei/43/1_20140426160442_6g9sd.jpg', ''),
(675, 954, 43, 0, 1, 0, 'fenlei/43/1_20140426160442_qeymj.jpg', ''),
(676, 955, 43, 0, 1, 0, 'fenlei/43/1_20140426160453_wtqdr.jpg', ''),
(677, 956, 43, 0, 1, 0, 'fenlei/43/1_20140426160424_3nfoj.jpg', ''),
(678, 956, 43, 0, 1, 0, 'fenlei/43/1_20140426160424_8gd6d.jpg', ''),
(679, 957, 43, 0, 1, 0, 'fenlei/43/1_20140426160420_5l6tu.jpg', ''),
(680, 958, 43, 0, 1, 0, 'fenlei/43/1_20140426160459_vjgrp.jpg', ''),
(681, 959, 43, 0, 1, 0, 'fenlei/43/1_20140426160404_t8jps.jpg', ''),
(682, 960, 43, 0, 1, 0, 'fenlei/43/1_20140426160441_4u74d.jpg', ''),
(683, 961, 43, 0, 1, 0, 'fenlei/43/1_20140426160449_otv5g.jpg', ''),
(684, 962, 43, 0, 1, 0, 'fenlei/43/1_20140427160432_ytstk.jpg', ''),
(685, 963, 43, 0, 1, 0, 'fenlei/43/1_20140526220504_4eulf.gif', ''),
(686, 965, 43, 0, 9, 0, 'qb_fenlei_/43/9_20140819100802_o4d5y.jpg', ''),
(687, 966, 43, 0, 9, 0, 'qb_fenlei_/43/9_20140819100820_rhzku.jpg', ''),
(688, 966, 43, 0, 9, 0, 'qb_fenlei_/43/9_20140819100824_l0ezv.jpg', ''),
(689, 967, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140819100812_2qewb.jpg', ''),
(690, 967, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140819100813_wdhil.jpg', ''),
(691, 968, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140819110844_uotm0.jpg', ''),
(692, 969, 43, 0, 9, 0, 'qb_fenlei_/43/9_20140819110830_2jjtr.jpg', ''),
(693, 970, 43, 0, 9, 0, 'qb_fenlei_/43/9_20140819110821_wz4ya.jpg', ''),
(694, 970, 43, 0, 9, 0, 'qb_fenlei_/43/9_20140819110823_nuuxp.jpg', ''),
(695, 971, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140819120812_prr7y.jpg', ''),
(696, 971, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140819120815_nmkv1.jpg', ''),
(697, 972, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140819120853_zqmts.jpg', ''),
(698, 973, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140819130822_78ayc.jpg', ''),
(699, 974, 43, 0, 0, 0, 'qb_fenlei_/43/_20140820130807_xgez7.jpg', ''),
(700, 974, 43, 0, 0, 0, 'qb_fenlei_/43/_20140820130811_ph2qs.jpg', ''),
(701, 975, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140820150855_ox9bn.jpg', ''),
(702, 976, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140820150804_uc5rg.jpg', ''),
(703, 977, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140820150830_jtgfv.jpg', ''),
(704, 978, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140821000843_nbcoi.jpg', ''),
(705, 978, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140821000849_nbtfx.jpg', ''),
(706, 979, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140821010809_ontq1.jpg', ''),
(707, 979, 43, 0, 1, 0, 'qb_fenlei_/43/1_20140821010815_0ofmu.jpg', ''),
(708, 980, 43, 0, 0, 0, 'qb_fenlei_/43/_20140821140836_klmlh.jpg', ''),
(709, 981, 43, 0, 0, 0, 'qb_fenlei_/43/_20140822010857_xqtmu.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_report`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_report` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `onlineip` varchar(15) NOT NULL default '',
  `type` tinyint(2) NOT NULL default '0',
  `content` text NOT NULL,
  `iftrue` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_sort`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_sort` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `mid` smallint(4) NOT NULL default '0',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metatitle` varchar(250) NOT NULL default '',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL default '0',
  `contents` mediumint(4) NOT NULL default '0',
  `tableid` varchar(30) NOT NULL default '',
  `dir_name` varchar(50) NOT NULL default '',
  `ifcolor` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`fid`),
  KEY `mid` (`mid`),
  KEY `fup` (`fup`,`list`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=344 ;

--
-- 转存表中的数据 `qb_fenlei_sort`
--

INSERT INTO `qb_fenlei_sort` (`fid`, `fup`, `name`, `mid`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metatitle`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `index_show`, `contents`, `tableid`, `dir_name`, `ifcolor`) VALUES
(180, 0, '车辆买卖', 40, 1, 0, 1, '', 9, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'cheliangmaimai', 0),
(181, 0, '房屋租售', 54, 1, 0, 1, '', 8, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'fangwuzushou', 0),
(182, 0, '全职招聘', 49, 1, 0, 1, '', 7, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'quanzhizhaopin', 0),
(2, 0, '物品交易', 15, 1, 0, 1, '', 10, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 100, '', 'wupinjiaoyi', 0),
(215, 181, '店铺转让/出租', 62, 2, 0, 0, '', 93, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'dianpuzhuanrang_chuzu', 0),
(216, 181, '厂房/仓库/土地', 63, 2, 0, 0, '', 92, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'changfang_cangku_tudi', 0),
(217, 181, '写字楼出租', 60, 2, 0, 0, '', 91, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'xiezilouchuzu', 0),
(218, 181, '求租/求购', 49, 2, 0, 0, '', 90, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qiuzu_qiugou', 0),
(219, 182, '营业员', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'yingyeyuan', 0),
(220, 182, '店长', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'dianchang', 0),
(221, 182, '服务员', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'fuwuyuan', 0),
(222, 182, '收银员', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'shouyinyuan', 0),
(223, 182, '销售', 73, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'xiaoshou', 0),
(224, 182, '房产经纪人', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'fangchanjingjiren', 0),
(225, 182, '文员', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'wenyuan', 0),
(226, 182, '助理', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'zhuli', 0),
(227, 182, '前台', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qiantai', 0),
(228, 182, '行政', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'xingzheng', 0),
(212, 181, '新房出售', 59, 2, 0, 0, '', 96, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'xinfangchushou', 0),
(213, 181, '写字楼出售', 60, 2, 0, 0, '', 95, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'xiezilouchushou', 0),
(214, 181, '商铺出售', 61, 2, 0, 0, '', 94, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'shangpuchushou', 0),
(209, 181, '合租', 54, 2, 0, 0, '', 99, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'hezu', 0),
(210, 181, '日租/短租', 55, 2, 0, 0, '', 98, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'rizu_duanzu', 0),
(211, 181, '二手房出售', 56, 2, 0, 0, '', 97, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'ershoufangchushou', 0),
(206, 180, '电动车', 52, 2, 0, 0, '', 83, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'diandongche', 0),
(207, 180, '自行车', 53, 2, 0, 0, '', 82, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'zixingche', 0),
(208, 181, '房屋出租', 54, 2, 0, 0, '', 100, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'fangwuchuzu', 0),
(183, 0, '兼职招聘', 4, 1, 0, 1, '', 4, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jianzhizhaopin', 0),
(184, 0, '求职简历', 4, 1, 0, 1, '', 1, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qiuzhijianli', 0),
(185, 0, '交友活动', 112, 1, 0, 1, '', 3, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jiaoyouhuodong', 0),
(186, 0, '宠物', 122, 1, 0, 1, '', 2, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'chongwu', 0),
(187, 0, '生活服务', 49, 1, 0, 1, '', 6, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'shenghuofuwu', 0),
(188, 0, '教育培训', 107, 1, 0, 1, '', 5, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jiaoyupeixun', 0),
(189, 180, '二手轿车', 40, 2, 0, 0, '', 100, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'ershoujiaoche', 0),
(190, 180, '货车/工程车', 41, 2, 0, 0, '', 99, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'huoche_gongchengche', 0),
(191, 180, '本地下线车', 40, 2, 0, 0, '', 98, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'bendixiaxianche', 0),
(192, 180, '面包车/客车', 42, 2, 0, 0, '', 97, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'mianbaoche_keche', 0),
(193, 180, '拖拉机/收割机', 43, 2, 0, 0, '', 96, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'tuolaji_shougeji', 0),
(194, 180, '新车优惠/4S店', 44, 2, 0, 0, '', 95, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'xincheyouhui_4Sdian', 0),
(195, 180, '汽车用品', 45, 2, 0, 0, '', 94, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qicheyongpin', 0),
(196, 180, '汽车配件', 46, 2, 0, 0, '', 93, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qichepeijian', 0),
(197, 180, '车辆收购', 47, 2, 0, 0, '', 92, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'cheliangshougou', 0),
(198, 180, '过户上牌', 48, 2, 0, 0, '', 91, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'guohushangpai', 0),
(199, 180, '汽车保险', 49, 2, 0, 0, '', 90, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qichebaoxian', 0),
(200, 180, '租车', 50, 2, 0, 0, '', 89, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'zuche', 0),
(201, 180, '驾校', 49, 2, 0, 0, '', 88, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jiaxiao', 0),
(202, 180, '陪驾', 49, 2, 0, 0, '', 87, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'peijia', 0),
(203, 180, '代驾', 49, 2, 0, 0, '', 86, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'daijia', 0),
(204, 180, '买车贷款', 49, 2, 0, 0, '', 85, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'maichedaikuan', 0),
(205, 180, '摩托车/燃气车', 51, 2, 0, 0, '', 84, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'motuoche_ranqiche', 0),
(21, 2, '虚拟物品/QQ', 33, 2, 0, 0, '', 82, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'xuniwupin_QQ', 0),
(23, 2, '鞋子/箱包', 32, 2, 0, 0, '', 84, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'xiezi_xiangbao', 0),
(24, 2, '手表/首饰', 31, 2, 0, 0, '', 85, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'shoubiao_shoushi', 0),
(25, 2, '母婴/幼儿/玩具', 30, 2, 0, 0, '', 86, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 1, 1, '', 'muying_youer_wanju', 0),
(26, 2, '服装/配饰', 29, 2, 0, 0, '', 87, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'fuzhuang_peishi', 0),
(27, 2, '收藏品/工艺品', 28, 2, 0, 0, '', 88, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'shoucangpin_gongyipin', 0),
(28, 2, '办公家具/耗材', 27, 2, 0, 0, '', 89, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'bangongjiaju_haocai', 0),
(29, 2, '农产品/食品', 26, 2, 0, 0, '', 90, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'nongchanpin_shipin', 0),
(30, 2, '日用品/化妆品', 25, 2, 0, 0, '', 91, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 1, 0, '', 'riyongpin_huazhuangpin', 0),
(31, 2, '家用电器', 24, 2, 0, 0, '', 92, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 1, 0, '', 'jiayongdianqi', 0),
(32, 2, '家具', 23, 2, 0, 0, '', 93, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'jiaju', 0),
(33, 2, '数码产品/相机', 22, 2, 0, 0, '', 94, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'shumachanpin_xiangji', 0),
(36, 2, '电脑配件/宽带', 21, 2, 0, 0, '', 95, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'diannaopeijian_kuandai', 0),
(37, 2, '台式电脑', 19, 2, 0, 0, '', 96, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'taishidiannao', 0),
(38, 2, '平板电脑/iPad', 18, 2, 0, 0, '', 97, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'pingbandiannao_iPad', 0),
(40, 2, '笔记本', 17, 2, 0, 0, '', 98, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'bijiben', 0),
(42, 2, '手机号码', 16, 2, 0, 0, '', 99, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'shoujihaoma', 0),
(43, 2, '二手手机', 15, 2, 0, 0, '', 100, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:2:{s:7:"is_html";N;s:11:"field_value";N;}', 0, 0, '', 'ershoushouji', 1),
(340, 183, '设计', 4, 2, 0, 0, '', -1, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'sheji', 0),
(339, 188, '文艺/体育培训', 111, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'wenyi_tiyupeixun', 0),
(338, 188, '婴幼儿教育', 109, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'yingyouerjiaoyu', 0),
(337, 188, '中小学教育', 110, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'zhongxiaoxuejiaoyu', 0),
(336, 188, '设计培训', 109, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'shejipeixun', 0),
(335, 188, '外语培训', 109, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'waiyupeixun', 0),
(334, 188, '电脑培训', 109, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'diannaopeixun', 0),
(333, 188, '学历教育', 108, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'xuelijiaoyu', 0),
(332, 188, '职业技能培训', 107, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'zhiyejinengpeixun', 0),
(331, 187, '其它服务', 84, 2, 0, 0, '', -1, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qitafuwu', 0),
(229, 182, '人事', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'renshi', 0),
(230, 182, '客服', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'kefu', 0),
(231, 182, '编辑', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'bianji', 0),
(232, 182, '翻译', 72, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'fanyi', 0),
(233, 182, '家政', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jiazheng', 0),
(234, 182, '保洁', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'baojie', 0),
(235, 182, '司机', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'siji', 0),
(236, 182, '保安', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'baoan', 0),
(237, 182, '厨师', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'chushi', 0),
(238, 182, '切配', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qiepei', 0),
(239, 182, '送货员', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'songhuoyuan', 0),
(240, 182, '快递员', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'kuaidiyuan', 0),
(241, 182, '仓管', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'cangguan', 0),
(242, 182, '网管', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'wangguan', 0),
(243, 182, '工人/技工', 71, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'gongren_jigong', 0),
(244, 182, '金融/银行/保险', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jinrong_yinxing_baoxian', 0),
(245, 182, '财务/会计/出纳', 70, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'caiwu_huiji_chuna', 0),
(246, 182, '教育/培训/咨询', 69, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jiaoyu_peixun_zixun', 0),
(247, 182, 'IT/通信/互联网', 68, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'IT_tongxin_hulianwang', 0),
(248, 182, '市场/运营/策划', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'shichang_yunying_cehua', 0),
(249, 182, '广告/美工/设计', 67, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'guanggao_meigong_sheji', 0),
(250, 182, '摄影/影视', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'sheying_yingshi', 0),
(251, 182, '美容美发', 66, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'meirongmeifa', 0),
(252, 182, '保健按摩', 66, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'baojiananmo', 0),
(253, 182, 'KTV/酒吧', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'KTV_jiuba', 0),
(254, 182, '其它招聘', 65, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qitazhaopin', 0),
(255, 182, '人才招聘会', 64, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'rencaizhaopinhui', 0),
(256, 183, '学生兼职', 4, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'xueshengjianzhi', 0),
(257, 183, '促销', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'cuxiao', 0),
(258, 183, '传单派发', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'chuandanpaifa', 0),
(259, 183, '家教', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'jiajiao', 0),
(260, 183, '问卷调查', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'wenjuandiaocha', 0),
(261, 183, '客服', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'kefu261', 0),
(262, 183, '餐厅/服务员', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'canting_fuwuyuan', 0),
(263, 183, '模特', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'mote', 0),
(264, 183, '礼仪', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'liyi', 0),
(265, 183, '演员', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'yanyuan', 0),
(266, 183, '摄影', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'sheying', 0),
(267, 183, '网站', 4, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'wangzhan', 0),
(268, 183, '会计', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'huiji', 0),
(269, 183, '翻译', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'fanyi269', 0),
(270, 183, '其它兼职', 4, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', 'qitajianzhi', 0),
(271, 183, '实习生', 4, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'shixisheng', 0),
(272, 184, '全职求职简历', 116, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'quanzhiqiuzhijianli', 0),
(273, 184, '兼职求职简历', 115, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jianzhiqiuzhijianli', 0),
(274, 185, '征婚', 112, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'zhenghun', 0),
(275, 185, '女找男', 112, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'nvzhaonan', 0),
(276, 185, '男找女', 112, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'nanzhaonv', 0),
(278, 185, '技能交换', 113, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jinengjiaohuan', 0),
(279, 185, '运动打球', 114, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'yundongdaqiu', 0),
(280, 185, '结伴出游', 114, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jiebanchuyou', 0),
(281, 185, '长途拼车', 114, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'changtupinche', 0),
(282, 185, '上下班拼车', 114, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'shangxiabanpinche', 0),
(283, 185, '老乡会', 114, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'laoxianghui', 0),
(284, 185, '寻人/寻物', 114, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'xunren_xunwu', 0),
(285, 185, '打折促销', 114, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'dazhecuxiao', 0),
(286, 186, '狗狗', 117, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'gougou', 0),
(287, 186, '猫猫', 118, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'maomao', 0),
(288, 186, '花鸟鱼虫/其他', 119, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'huaniaoyuchong_qita', 0),
(289, 186, '宠物赠送', 120, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'chongwuzengsong', 0),
(290, 186, '宠物用品', 121, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'chongwuyongpin', 0),
(291, 186, '宠物服务/配种', 122, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'chongwufuwu_peizhong', 0),
(292, 187, '租车', 84, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'zuche292', 0),
(293, 187, '汽修/保养', 84, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qixiu_baoyang', 0),
(294, 187, '驾校', 84, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jiaxiao294', 0),
(295, 187, '陪驾/代驾', 84, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'peijia_daijia', 0),
(296, 187, '婚庆/化妆', 106, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'hunqing_huazhuang', 0),
(297, 187, '摄影', 105, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'sheying297', 0),
(298, 187, '美容纤体', 104, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'meirongxianti', 0),
(299, 187, '装修', 103, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'zhuangxiu', 0),
(300, 187, '建材装饰', 102, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jiancaizhuangshi', 0),
(301, 187, '投资理财', 101, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'touzilicai', 0),
(302, 187, '保姆/月嫂', 100, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'baomu_yuesao', 0),
(303, 187, '保洁/清洗', 99, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'baojie_qingxi', 0),
(304, 187, '搬家', 84, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'banjia', 0),
(305, 187, '物品回收', 98, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'wupinhuishou', 0),
(306, 187, '家电维修', 97, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jiadianweixiu', 0),
(307, 187, '电脑维修', 96, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'diannaoweixiu', 0),
(308, 187, '家居维修', 95, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jiajuweixiu', 0),
(309, 187, '疏通', 94, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'shutong', 0),
(310, 187, '外卖/送水', 93, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'waimai_songshui', 0),
(311, 187, '开锁/修锁', 49, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'kaisuo_xiusuo', 0),
(312, 187, '旅游', 92, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'lvyou', 0),
(313, 187, '休闲娱乐', 91, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'xiuxianyule', 0),
(314, 187, '酒店', 90, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jiudian', 0),
(315, 187, '机票/签证', 89, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'jipiao_qianzheng', 0),
(316, 187, '招商加盟', 88, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'zhaoshangjiameng', 0),
(317, 187, '担保/贷款', 87, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'danbao_daikuan', 0),
(318, 187, '公司注册', 86, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'gongsizhuce', 0),
(319, 187, '会计/审计', 85, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'huiji_shenji', 0),
(320, 187, '网站建设', 84, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'wangzhanjianshe', 0),
(321, 187, '快递/物流', 83, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'kuaidi_wuliu', 0),
(322, 187, '租赁', 82, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'zulin', 0),
(323, 187, '庆典/演出', 81, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qingdian_yanchu', 0),
(324, 187, '印刷/喷绘', 80, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'yinshua_penhui', 0),
(325, 187, '设计策划', 79, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'shejicehua', 0),
(326, 187, '律师', 78, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'lvshi', 0),
(327, 187, '翻译/速记', 77, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'fanyi_suji', 0),
(328, 187, '鲜花/盆景', 76, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'xianhua_penjing', 0),
(329, 187, '礼品定制', 75, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'lipindingzhi', 0),
(330, 187, '本地名站', 74, 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'bendimingzhan', 0),
(173, 2, '运动/图书/乐器', 34, 2, 0, 0, '', 81, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'yundong_tushu_leqi', 0),
(174, 2, '门票卡券', 35, 2, 0, 0, '', 79, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'menpiaokaquan', 0),
(175, 2, '文体用品', 36, 2, 0, 0, '', 78, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'wentiyongpin', 0),
(176, 2, '工业设备', 39, 2, 0, 0, '', 76, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'gongyeshebei', 0),
(177, 2, '二手回收', 37, 2, 0, 0, '', 77, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'ershouhuishou', 0),
(178, 2, '其它物品', 38, 2, 0, 0, '', 76, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'qitawupin', 0),
(179, 2, '免费赠送', 38, 2, 0, 0, '', 75, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', '', 0, '', '', '', '', 0, 'a:1:{s:11:"field_value";N;}', 0, 0, '', 'mianfeizengsong', 0),
(341, 0, '商务服务', 15, 1, 0, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', '', 0),
(342, 341, '公司注册', 15, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', '', 0),
(343, 341, '手机办理', 15, 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_street`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_street` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` text NOT NULL,
  `dirname` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=129 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_fenlei_zone`
--

CREATE TABLE IF NOT EXISTS `qb_fenlei_zone` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` text NOT NULL,
  `dirname` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2980 ;

--
-- 转存表中的数据 `qb_fenlei_zone`
--

INSERT INTO `qb_fenlei_zone` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `dirname`) VALUES
(1, 1, '海淀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', 'haidian'),
(2, 1, '朝阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chaoyang'),
(3, 1, '东城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongcheng'),
(4, 1, '西城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xicheng'),
(5, 1, '崇文', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chongwen'),
(6, 1, '宣武', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xuanwu'),
(7, 1, '丰台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengtai'),
(8, 1, '石景山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shijingshan'),
(9, 1, '房山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fangshan'),
(10, 1, '大兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daxing'),
(11, 1, '通州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongzhou'),
(12, 1, '顺义', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shunyi'),
(13, 1, '昌平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changping'),
(14, 1, '密云', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'miyun'),
(15, 1, '怀柔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huairou'),
(16, 1, '延庆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanqing'),
(17, 1, '平谷', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pinggu'),
(18, 1, '门头沟', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mentougou'),
(19, 2, '黄浦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangpu'),
(20, 2, '静安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingan'),
(21, 2, '卢湾', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luwan'),
(22, 2, '徐汇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xuhui'),
(23, 2, '长宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changning'),
(24, 2, '闸北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhabei'),
(25, 2, '普陀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'putuo'),
(26, 2, '虹口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongkou'),
(27, 2, '杨浦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangpu'),
(28, 2, '浦东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pudong'),
(29, 2, '闵行', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xing'),
(30, 2, '松江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'songjiang'),
(31, 2, '宝山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baoshan'),
(32, 2, '嘉定', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiading'),
(33, 2, '青浦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingpu'),
(34, 2, '奉贤', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengxian'),
(35, 2, '南汇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanhui'),
(36, 2, '金山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinshan'),
(37, 2, '崇明', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chongming'),
(38, 3, '大学专区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daxuezhuanqu'),
(39, 3, '和平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'heping'),
(40, 3, '河东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hedong'),
(41, 3, '河西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hexi'),
(42, 3, '南开', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nankai'),
(43, 3, '河北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hebei'),
(44, 3, '红桥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongqiao'),
(45, 3, '塘沽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tanggu'),
(46, 3, '汉沽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hangu'),
(47, 3, '大港', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dagang'),
(48, 3, '东丽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongli'),
(49, 3, '西青', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiqing'),
(50, 3, '北辰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beichen'),
(51, 3, '津南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinnan'),
(52, 3, '武清', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuqing'),
(53, 3, '宝坻', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bao'),
(54, 3, '静海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinghai'),
(55, 3, '宁河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ninghe'),
(56, 3, '蓟县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jixian'),
(57, 3, '开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifaqu'),
(58, 4, '渝中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuzhong'),
(59, 4, '大渡口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dadukou'),
(60, 4, '江北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangbei'),
(61, 4, '沙坪坝', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shapingba'),
(62, 4, '九龙坡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiulongpo'),
(63, 4, '南岸', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanan'),
(64, 4, '北碚', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bei'),
(65, 4, '万盛', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wansheng'),
(66, 4, '双桥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangqiao'),
(67, 4, '渝北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yubei'),
(68, 4, '巴南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'banan'),
(69, 4, '万州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wanzhou'),
(70, 4, '涪陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuling'),
(71, 4, '黔江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qianjiang'),
(72, 4, '长寿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changshou'),
(73, 5, '荔湾区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liwanqu'),
(74, 5, '越秀区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuexiuqu'),
(75, 5, '东山区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongshanqu'),
(76, 5, '天河区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianhequ'),
(77, 5, '海珠区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haizhuqu'),
(78, 5, '黄埔区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangpuqu'),
(79, 5, '白云区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baiyunqu'),
(80, 5, '番禺区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fanqu'),
(81, 5, '花都区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaduqu'),
(82, 5, '增城区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zengchengqu'),
(83, 5, '从化区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'conghuaqu'),
(973, 104, '盐山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanshan'),
(972, 104, '海兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haixing'),
(971, 104, '东光', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongguang'),
(970, 104, '青县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingxian'),
(969, 104, '沧县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cangxian'),
(968, 104, '河间', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hejian'),
(967, 104, '黄骅', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huang'),
(966, 104, '任丘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'renqiu'),
(965, 104, '泊头', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'botou'),
(964, 104, '渤海新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bohaixinqu'),
(963, 104, '新华', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinhua'),
(962, 104, '运河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunhe'),
(96, 158, '岳麓', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuelu'),
(97, 158, '芙蓉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rong'),
(98, 158, '天心', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianxin'),
(99, 158, '开福', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifu'),
(100, 158, '雨花', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuhua'),
(101, 158, '浏阳市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangshi'),
(102, 158, '长沙县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changshaxian'),
(103, 158, '望城县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wangchengxian'),
(104, 158, '宁乡县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningxiangxian'),
(2453, 273, '陇县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longxian'),
(2452, 273, '眉县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'meixian'),
(2451, 273, '扶风', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fufeng'),
(2450, 273, '岐山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shan'),
(2449, 273, '凤翔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengxiang'),
(2448, 273, '陈仓', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chencang'),
(2447, 273, '金台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jintai'),
(2446, 273, '渭滨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weibin'),
(2445, 272, '宜君', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yijun'),
(2444, 272, '耀州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yaozhou'),
(2443, 272, '印台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yintai'),
(2442, 272, '王益', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wangyi'),
(2441, 272, '经济技术开发', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingjijishukaifa'),
(119, 281, '青羊区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingyangqu'),
(120, 281, '锦江区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinjiangqu'),
(121, 281, '金牛区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinniuqu'),
(122, 281, '武侯区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuhouqu'),
(123, 281, '成华区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chenghuaqu'),
(124, 281, '龙泉驿区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longquanqu'),
(125, 281, '青白江区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingbaijiangqu'),
(126, 281, '新都区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinduqu'),
(127, 281, '温江区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wenjiangqu'),
(128, 281, '都江堰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dujiangyan'),
(129, 281, '大邑县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dayixian'),
(130, 281, '彭州市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pengzhoushi'),
(131, 281, '蒲江县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pujiangxian'),
(132, 281, '双流县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangliuxian'),
(133, 281, '新津县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinjinxian'),
(134, 281, '崇州市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chongzhoushi'),
(135, 281, '金堂县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jintangxian'),
(136, 281, '郫县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(137, 281, '邛崃市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shi'),
(138, 281, '高新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinqu'),
(139, 281, '大学专区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daxuezhuanqu'),
(140, 26, '拱墅', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gongshu'),
(141, 26, '西湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xihu'),
(142, 26, '上城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangcheng'),
(143, 26, '下城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiacheng'),
(144, 26, '江干', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianggan'),
(145, 26, '滨江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'binjiang'),
(146, 26, '余杭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuhang'),
(147, 26, '萧山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiaoshan'),
(148, 26, '建德', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiande'),
(149, 26, '富阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuyang'),
(150, 26, '临安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linan'),
(151, 26, '桐庐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tonglu'),
(152, 26, '淳安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chunan'),
(153, 56, '思明', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'siming'),
(154, 56, '湖里', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huli'),
(155, 56, '集美', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jimei'),
(156, 56, '海沧', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haicang'),
(157, 56, '同安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongan'),
(158, 56, '翔安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangan'),
(159, 56, '厦门高校', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiamengaoxiao'),
(160, 6, '福田', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'futian'),
(161, 6, '罗湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luohu'),
(162, 6, '南山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanshan'),
(163, 6, '盐田', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yantian'),
(164, 6, '宝安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baoan'),
(165, 6, '龙岗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longgang'),
(166, 103, '长安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changan'),
(167, 103, '桥东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qiaodong'),
(168, 103, '桥西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qiaoxi'),
(169, 103, '新华', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinhua'),
(170, 103, '裕华', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuhua'),
(171, 103, '井陉矿区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingkuangqu'),
(172, 103, '辛集市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinjishi'),
(173, 103, '藁城市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengshi'),
(174, 103, '晋州市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinzhoushi'),
(175, 103, '新乐市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinleshi'),
(176, 103, '鹿泉市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luquanshi'),
(177, 103, '井陉县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingxian'),
(178, 103, '正定县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhengdingxian'),
(179, 103, '栾城县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengxian'),
(180, 103, '行唐县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingtangxian'),
(181, 103, '灵寿县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingshouxian'),
(182, 103, '高邑县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoyixian'),
(183, 103, '深泽县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shenzexian'),
(184, 103, '赞皇县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zanhuangxian'),
(185, 103, '无极县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wujixian'),
(186, 103, '平山县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingshanxian'),
(187, 103, '元氏县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuanshixian'),
(188, 103, '赵　县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhaoxian'),
(189, 103, '开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifaqu'),
(190, 21, '莞城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(191, 21, '石龙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shilong'),
(192, 21, '虎门', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'humen'),
(193, 21, '万江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wanjiang'),
(194, 21, '东城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongcheng'),
(195, 21, '中堂', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhongtang'),
(196, 21, '望牛墩', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wangniudun'),
(197, 21, '麻涌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mayong'),
(198, 21, '石碣', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shi'),
(199, 21, '高埗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gao坉ie'),
(200, 21, '道滘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dao'),
(201, 21, '沙田', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shatian'),
(202, 21, '厚街', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'houjie'),
(203, 21, '长安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changan'),
(204, 21, '洪梅', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongmei'),
(205, 21, '寮步', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bu'),
(206, 21, '大朗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dalang'),
(207, 21, '大岭山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dalingshan'),
(208, 21, '黄江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangjiang'),
(209, 21, '樟木头', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangmutou'),
(210, 21, '清溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingxi'),
(211, 21, '塘厦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tangxia'),
(212, 21, '凤岗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fenggang'),
(213, 21, '常平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changping'),
(214, 21, '谢岗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiegang'),
(215, 21, '桥头', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qiaotou'),
(216, 21, '横沥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hengli'),
(217, 21, '东坑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongkeng'),
(218, 21, '企石', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qishi'),
(219, 21, '石排', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shipai'),
(220, 21, '茶山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chashan'),
(221, 21, '南城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nancheng'),
(222, 7, '香洲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangzhou'),
(223, 7, '斗门', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'doumen'),
(224, 7, '金湾', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinwan'),
(225, 8, '潮阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chaoyang'),
(226, 8, '龙湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longhu'),
(227, 8, '金平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinping'),
(228, 8, '澄海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chenghai'),
(229, 8, '南澳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanao'),
(230, 8, '濠江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiang'),
(231, 8, '潮南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chaonan'),
(232, 9, '武江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wujiang'),
(233, 9, '浈江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiang'),
(234, 9, '曲江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qujiang'),
(235, 9, '始兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shixing'),
(236, 9, '仁化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'renhua'),
(237, 9, '翁源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wengyuan'),
(238, 9, '乳源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ruyuan'),
(239, 9, '新丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinfeng'),
(240, 9, '乐昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lechang'),
(241, 9, '南雄', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanxiong'),
(242, 10, '禅城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(243, 10, '南海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanhai'),
(244, 10, '顺德', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shunde'),
(245, 10, '三水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sanshui'),
(246, 10, '高明', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoming'),
(247, 11, '蓬江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pengjiang'),
(248, 11, '江海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianghai'),
(249, 11, '新会', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinhui'),
(250, 11, '台山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taishan'),
(251, 11, '开平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaiping'),
(252, 11, '鹤山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'heshan'),
(253, 11, '恩平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'enping'),
(254, 12, '赤坎', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chikan'),
(255, 12, '霞山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiashan'),
(256, 12, '坡头', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'potou'),
(257, 12, '麻章', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mazhang'),
(258, 12, '遂溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suixi'),
(259, 12, '徐闻', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xuwen'),
(260, 12, '廉江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lianjiang'),
(261, 12, '雷州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'leizhou'),
(262, 12, '吴川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuchuan'),
(263, 13, '茂南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'maonan'),
(264, 13, '茂港', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'maogang'),
(265, 13, '电白', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dianbai'),
(266, 13, '高州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaozhou'),
(267, 13, '化州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huazhou'),
(268, 13, '信宜', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinyi'),
(269, 14, '端州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'duanzhou'),
(270, 14, '鼎湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dinghu'),
(271, 14, '广宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangning'),
(272, 14, '怀集', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaiji'),
(273, 14, '封开', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengkai'),
(274, 14, '德庆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'deqing'),
(275, 14, '高要', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoyao'),
(276, 14, '四会', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sihui'),
(277, 15, '惠城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huicheng'),
(278, 15, '惠阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huiyang'),
(279, 15, '博罗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'boluo'),
(280, 15, '惠东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huidong'),
(281, 15, '龙门', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longmen'),
(282, 16, '梅江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'meijiang'),
(283, 16, '梅县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'meixian'),
(284, 16, '大埔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dapu'),
(285, 16, '丰顺', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengshun'),
(286, 16, '五华', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuhua'),
(287, 16, '平远', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingyuan'),
(288, 16, '蕉岭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiaoling'),
(289, 16, '兴宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingning'),
(290, 17, '城区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengqu'),
(291, 17, '海丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haifeng'),
(292, 17, '陆河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luhe'),
(293, 17, '陆丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lufeng'),
(294, 18, '源城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuancheng'),
(295, 18, '紫金', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zijin'),
(296, 18, '龙川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longchuan'),
(297, 18, '连平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lianping'),
(298, 18, '和平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'heping'),
(299, 18, '东源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongyuan'),
(300, 19, '江城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangcheng'),
(301, 19, '阳西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangxi'),
(302, 19, '阳东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangdong'),
(303, 19, '阳春', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangchun'),
(304, 20, '清城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingcheng'),
(305, 20, '佛冈', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fogang'),
(306, 20, '阳山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangshan'),
(307, 20, '连山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lianshan'),
(308, 20, '连南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liannan'),
(309, 20, '清新', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingxin'),
(310, 20, '英德', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yingde'),
(311, 20, '连州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lianzhou'),
(312, 22, '石岐区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shiqu'),
(313, 22, '西区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiqu'),
(314, 22, '东区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongqu'),
(315, 22, '南区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanqu'),
(316, 22, '火炬', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huoju'),
(317, 22, '开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifaqu'),
(318, 22, '五桂山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuguishan'),
(319, 22, '港口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gangkou'),
(320, 22, '古镇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guzhen'),
(321, 22, '小榄', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiao'),
(322, 22, '三乡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sanxiang'),
(323, 22, '南朗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanlang'),
(324, 22, '沙溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shaxi'),
(325, 22, '坦洲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tanzhou'),
(326, 22, '大涌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dayong'),
(327, 22, '东升', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongsheng'),
(328, 22, '黄圃', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangpu'),
(329, 22, '三角', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sanjiao'),
(330, 22, '东凤', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongfeng'),
(331, 22, '阜沙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fusha'),
(332, 22, '南头', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nantou'),
(333, 22, '民众', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'minzhong'),
(334, 22, '横栏', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'henglan'),
(335, 22, '板芙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ban'),
(336, 22, '神湾', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shenwan'),
(337, 23, '湘桥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangqiao'),
(338, 23, '潮安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chaoan'),
(339, 23, '饶平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'raoping'),
(340, 23, '枫溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengxi'),
(341, 24, '榕城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(342, 24, '揭东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiedong'),
(343, 24, '揭西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiexi'),
(344, 24, '惠来', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huilai'),
(345, 24, '普宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'puning'),
(346, 25, '云城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuncheng'),
(347, 25, '新兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinxing'),
(348, 25, '郁南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunan'),
(349, 25, '云安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunan'),
(350, 25, '罗定', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luoding'),
(351, 26, '拱墅', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gongshu'),
(352, 26, '西湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xihu'),
(353, 26, '上城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangcheng'),
(354, 26, '下城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiacheng'),
(355, 26, '江干', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianggan'),
(356, 26, '滨江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'binjiang'),
(357, 26, '余杭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuhang'),
(358, 26, '萧山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiaoshan'),
(359, 26, '建德', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiande'),
(360, 26, '富阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuyang'),
(361, 26, '临安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linan'),
(362, 26, '桐庐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tonglu'),
(363, 26, '淳安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chunan'),
(364, 27, '经济技术开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingjijishukaifaqu'),
(365, 27, '嘉兴港', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiaxinggang'),
(366, 27, '南湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanhu'),
(367, 27, '秀洲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiuzhou'),
(368, 27, '海宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haining'),
(369, 27, '平湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pinghu'),
(370, 27, '桐乡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongxiang'),
(371, 27, '嘉善', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiashan'),
(372, 27, '海盐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haiyan'),
(373, 28, '海曙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haishu'),
(374, 28, '江东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangdong'),
(375, 28, '江北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangbei'),
(376, 28, '北仑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beilun'),
(377, 28, '镇海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhenhai'),
(378, 28, '鄞州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhou'),
(379, 28, '余姚', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuyao'),
(380, 28, '慈溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cixi'),
(381, 28, '奉化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fenghua'),
(382, 28, '象山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangshan'),
(383, 28, '宁海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ninghai'),
(384, 29, '吴兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuxing'),
(385, 29, '南浔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nan'),
(386, 29, '德清', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'deqing'),
(387, 29, '长兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changxing'),
(388, 29, '安吉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anji'),
(389, 30, '越城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuecheng'),
(390, 30, '绍兴县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shaoxingxian'),
(391, 30, '新昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinchang'),
(392, 30, '诸暨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhu'),
(393, 30, '上虞', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangyu'),
(394, 30, '嵊州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhou'),
(395, 31, '婺城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(396, 31, '金东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jindong'),
(397, 31, '武义', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuyi'),
(398, 31, '浦江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pujiang'),
(399, 31, '磐安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'panan'),
(400, 31, '兰溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lanxi'),
(401, 31, '东阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongyang'),
(402, 31, '永康', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongkang'),
(403, 31, '义乌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yiwu'),
(404, 32, '柯城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kecheng'),
(405, 32, '衢江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiang'),
(406, 32, '常山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changshan'),
(407, 32, '开化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaihua'),
(408, 32, '龙游', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longyou'),
(409, 32, '江山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangshan'),
(410, 33, '定海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dinghai'),
(411, 33, '普陀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'putuo'),
(412, 33, '岱山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shan'),
(413, 33, '嵊泗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', ''),
(414, 34, '椒江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiaojiang'),
(415, 34, '黄岩', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangyan'),
(416, 34, '路桥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luqiao'),
(417, 34, '温岭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wenling'),
(418, 34, '临海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linhai'),
(419, 34, '玉环', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuhuan'),
(420, 34, '三门', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sanmen'),
(421, 34, '天台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tiantai'),
(422, 34, '仙居', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xianju'),
(423, 35, '莲都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liandu'),
(424, 35, '青田', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingtian'),
(425, 35, '缙云', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yun'),
(426, 35, '遂昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suichang'),
(427, 35, '松阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'songyang'),
(428, 35, '云和', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunhe'),
(429, 35, '庆元', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingyuan'),
(430, 35, '景宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingning'),
(431, 35, '龙泉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longquan'),
(432, 36, '稠城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'choucheng'),
(433, 36, '北苑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beiyuan'),
(434, 36, '稠江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'choujiang'),
(435, 36, '江东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangdong'),
(436, 36, '后宅', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'houzhai'),
(437, 36, '城西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengxi'),
(438, 36, '廿三里', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sanli'),
(439, 37, '鹿城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lucheng'),
(440, 37, '龙湾', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longwan'),
(441, 37, '瓯海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hai'),
(442, 37, '瑞安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ruian'),
(443, 37, '乐清', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'leqing'),
(444, 37, '洞头', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongtou'),
(445, 37, '永嘉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongjia'),
(446, 37, '平阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingyang'),
(447, 37, '苍南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cangnan'),
(448, 37, '文成', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wencheng'),
(449, 37, '泰顺', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taishun'),
(450, 38, '庐江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lujiang');
INSERT INTO `qb_fenlei_zone` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `dirname`) VALUES
(451, 38, '庐阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luyang'),
(452, 38, '瑶海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yaohai'),
(453, 38, '蜀山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shushan'),
(454, 38, '包河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baohe'),
(455, 38, '长丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changfeng'),
(456, 38, '肥东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'feidong'),
(457, 38, '肥西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'feixi'),
(458, 38, '高新开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinkaifaqu'),
(459, 38, '新站试验', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinzhanshiyan'),
(460, 38, '经济技术开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingjijishukaifaqu'),
(461, 38, '滨湖新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'binhuxinqu'),
(462, 38, '政务文化新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhengwuwenhuaxinqu'),
(463, 39, '无为', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuwei'),
(464, 39, '镜湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinghu'),
(465, 39, '弋江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiang'),
(466, 39, '鸠江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiang'),
(467, 39, '三山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sanshan'),
(468, 39, '芜湖县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuhuxian'),
(469, 39, '繁昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fanchang'),
(470, 39, '南陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanling'),
(471, 40, '龙子湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longzihu'),
(472, 40, '蚌山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bangshan'),
(473, 40, '禹会', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuhui'),
(474, 40, '淮上', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaishang'),
(475, 40, '怀远', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaiyuan'),
(476, 40, '五河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuhe'),
(477, 40, '固镇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guzhen'),
(478, 41, '大通', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'datong'),
(479, 41, '田家庵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianjia'),
(480, 41, '谢家集', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiejiaji'),
(481, 41, '八公山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bagongshan'),
(482, 41, '潘集', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'panji'),
(483, 41, '凤台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengtai'),
(484, 42, '和县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hexian'),
(485, 42, '含山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hanshan'),
(486, 42, '博望', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bowang'),
(487, 42, '雨山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yushan'),
(488, 42, '花山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huashan'),
(489, 42, '当涂', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dangtu'),
(490, 43, '杜集', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'duji'),
(491, 43, '相山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangshan'),
(492, 43, '烈山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lieshan'),
(493, 43, '濉溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xi'),
(494, 44, '铜官山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongguanshan'),
(495, 44, '狮子山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shizishan'),
(496, 44, '郊区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiaoqu'),
(497, 44, '铜陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongling'),
(498, 45, '迎江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yingjiang'),
(499, 45, '大观', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daguan'),
(500, 45, '宜秀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yixiu'),
(501, 45, '怀宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaining'),
(502, 45, '枞阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yang'),
(503, 45, '潜山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qianshan'),
(504, 45, '太湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taihu'),
(505, 45, '宿松', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'susong'),
(506, 45, '望江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wangjiang'),
(507, 45, '岳西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuexi'),
(508, 45, '桐城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongcheng'),
(509, 46, '屯溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tunxi'),
(510, 46, '黄山区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangshanqu'),
(511, 46, '徽州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huizhou'),
(512, 46, '歙县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(513, 46, '休宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiuning'),
(514, 46, '黟县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(515, 46, '祁门', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qimen'),
(516, 47, '琅琊', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lang'),
(517, 47, '南谯', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nan'),
(518, 47, '来安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'laian'),
(519, 47, '全椒', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'quanjiao'),
(520, 47, '定远', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dingyuan'),
(521, 47, '凤阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengyang'),
(522, 47, '天长', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianchang'),
(523, 47, '明光', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mingguang'),
(524, 48, '颍州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhou'),
(525, 48, '颍东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dong'),
(526, 48, '颍泉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'quan'),
(527, 48, '临泉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linquan'),
(528, 48, '太和', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taihe'),
(529, 48, '阜南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'funan'),
(530, 48, '颍上', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shang'),
(531, 48, '界首', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jieshou'),
(532, 49, '居巢', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'juchao'),
(533, 49, '庐江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lujiang'),
(534, 49, '无为', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuwei'),
(535, 49, '含山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hanshan'),
(536, 49, '和县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hexian'),
(537, 50, '金安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinan'),
(538, 50, '裕安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuan'),
(539, 50, '寿县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shouxian'),
(540, 50, '霍邱', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huoqiu'),
(541, 50, '舒城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shucheng'),
(542, 50, '金寨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinzhai'),
(543, 50, '霍山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huoshan'),
(544, 51, '谯城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(545, 51, '涡阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'woyang'),
(546, 51, '蒙城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mengcheng'),
(547, 51, '利辛', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lixin'),
(548, 53, '宣州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xuanzhou'),
(549, 53, '郎溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'langxi'),
(550, 53, '广德', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangde'),
(551, 53, '泾县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(552, 53, '绩溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jixi'),
(553, 53, '旌德', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'de'),
(554, 53, '宁国', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningguo'),
(555, 54, '埇桥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', '坣ing'),
(556, 54, '砀山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shan'),
(557, 54, '萧县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiaoxian'),
(558, 54, '灵璧', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ling'),
(559, 54, '泗县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(560, 55, '鼓楼', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gulou'),
(561, 55, '台江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taijiang'),
(562, 55, '仓山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cangshan'),
(563, 55, '马尾', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mawei'),
(564, 55, '晋安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinan'),
(565, 55, '福清', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuqing'),
(566, 55, '长乐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changle'),
(567, 55, '闽侯', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'minhou'),
(568, 55, '连江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lianjiang'),
(569, 55, '罗源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luoyuan'),
(570, 55, '闽清', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'minqing'),
(571, 55, '永泰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongtai'),
(572, 55, '平潭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingtan'),
(573, 56, '思明', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'siming'),
(574, 56, '海沧', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haicang'),
(575, 56, '湖里', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huli'),
(576, 56, '集美', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jimei'),
(577, 56, '同安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongan'),
(578, 56, '翔安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangan'),
(579, 57, '城厢', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengxiang'),
(580, 57, '涵江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hanjiang'),
(581, 57, '荔城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'licheng'),
(582, 57, '秀屿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiuyu'),
(583, 57, '仙游', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xianyou'),
(584, 58, '梅列', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'meilie'),
(585, 58, '三元', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sanyuan'),
(586, 58, '明溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mingxi'),
(587, 58, '清流', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingliu'),
(588, 58, '宁化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ninghua'),
(589, 58, '大田', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'datian'),
(590, 58, '尤溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'youxi'),
(591, 58, '沙县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shaxian'),
(592, 58, '将乐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangle'),
(593, 58, '泰宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taining'),
(594, 58, '建宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianning'),
(595, 58, '永安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongan'),
(596, 59, '泉州台商投资区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'quanzhoutaishangtouziqu'),
(597, 59, '鲤城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'licheng'),
(598, 59, '丰泽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengze'),
(599, 59, '洛江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luojiang'),
(600, 59, '泉港', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'quangang'),
(601, 59, '经济技术开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingjijishukaifaqu'),
(602, 59, '晋江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinjiang'),
(603, 59, '南安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanan'),
(604, 59, '石狮', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shishi'),
(605, 59, '惠安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huian'),
(606, 59, '安溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anxi'),
(607, 59, '永春', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongchun'),
(608, 59, '德化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dehua'),
(609, 59, '金门', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinmen'),
(610, 60, '芗城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(611, 60, '龙文', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longwen'),
(612, 60, '云霄', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunxiao'),
(613, 60, '漳浦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangpu'),
(614, 60, '诏安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'an'),
(615, 60, '长泰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changtai'),
(616, 60, '东山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongshan'),
(617, 60, '南靖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanjing'),
(618, 60, '平和', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pinghe'),
(619, 60, '华安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaan'),
(620, 60, '龙海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longhai'),
(621, 61, '延平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanping'),
(622, 61, '顺昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shunchang'),
(623, 61, '浦城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pucheng'),
(624, 61, '光泽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangze'),
(625, 61, '松溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'songxi'),
(626, 61, '政和', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhenghe'),
(627, 61, '邵武', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shaowu'),
(628, 61, '武夷山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuyishan'),
(629, 61, '建瓯', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jian'),
(630, 61, '建阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianyang'),
(631, 62, '新罗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinluo'),
(632, 62, '长汀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changting'),
(633, 62, '永定', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongding'),
(634, 62, '上杭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shanghang'),
(635, 62, '武平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuping'),
(636, 62, '连城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liancheng'),
(637, 62, '漳平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangping'),
(638, 63, '东侨新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongqiaoxinqu'),
(639, 63, '蕉城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiaocheng'),
(640, 63, '霞浦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiapu'),
(641, 63, '古田', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gutian'),
(642, 63, '屏南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingnan'),
(643, 63, '寿宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shouning'),
(644, 63, '周宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhouning'),
(645, 63, '柘荣', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rong'),
(646, 63, '福安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuan'),
(647, 63, '福鼎', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuding'),
(648, 64, '城关', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengguan'),
(649, 64, '七里河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qilihe'),
(650, 64, '西固', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xigu'),
(651, 64, '安宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anning'),
(652, 64, '红古', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'honggu'),
(653, 64, '永登', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongdeng'),
(654, 64, '榆中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuzhong'),
(655, 64, '皋兰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaolan'),
(656, 65, '峪苑街道', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuyuanjiedao'),
(657, 65, '峪泉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuquan'),
(658, 65, '雄关', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiongguan'),
(659, 65, '新华街道', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinhuajiedao'),
(660, 65, '新城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xincheng'),
(661, 65, '五一街道', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuyijiedao'),
(662, 65, '文殊', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wenshu'),
(663, 65, '胜利街道', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shenglijiedao'),
(664, 65, '前进街道', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qianjinjiedao'),
(665, 65, '镜铁山矿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingtieshankuang'),
(666, 65, '镜铁区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingtiequ'),
(667, 65, '建设街道', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianshejiedao'),
(668, 65, '朝阳街道', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chaoyangjiedao'),
(669, 65, '长城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changcheng'),
(670, 66, '金川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinchuan'),
(671, 66, '永昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongchang'),
(672, 67, '白银区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baiyinqu'),
(673, 67, '平川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingchuan'),
(674, 67, '靖远', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingyuan'),
(675, 67, '会宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huining'),
(676, 67, '景泰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingtai'),
(677, 68, '秦州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinzhou'),
(678, 68, '麦积', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'maiji'),
(679, 68, '清水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingshui'),
(680, 68, '秦安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinan'),
(681, 68, '甘谷', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gangu'),
(682, 68, '武山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wushan'),
(683, 68, '张家川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangjiachuan'),
(684, 69, '凉州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liangzhou'),
(685, 69, '民勤', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'minqin'),
(686, 69, '古浪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gulang'),
(687, 69, '天祝', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianzhu'),
(688, 70, '甘州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ganzhou'),
(689, 70, '肃南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sunan'),
(690, 70, '民乐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'minle'),
(691, 70, '临泽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linze'),
(692, 70, '高台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaotai'),
(693, 70, '山丹', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shandan'),
(694, 71, '崆峒', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', ''),
(695, 71, '泾川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chuan'),
(696, 71, '灵台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingtai'),
(697, 71, '崇信', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chongxin'),
(698, 71, '华亭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huating'),
(699, 71, '庄浪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhuanglang'),
(700, 71, '静宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingning'),
(701, 72, '肃州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suzhou'),
(702, 72, '金塔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinta'),
(703, 72, '瓜州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guazhou'),
(704, 72, '肃北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'subei'),
(705, 72, '阿克塞', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'akesai'),
(706, 72, '玉门', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yumen'),
(707, 72, '敦煌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dunhuang'),
(708, 73, '西峰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xifeng'),
(709, 73, '庆城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingcheng'),
(710, 73, '环县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huanxian'),
(711, 73, '华池', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huachi'),
(712, 73, '合水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'heshui'),
(713, 73, '正宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhengning'),
(714, 73, '宁县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningxian'),
(715, 73, '镇原', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhenyuan'),
(716, 74, '安定', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anding'),
(717, 74, '通渭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongwei'),
(718, 74, '陇西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longxi'),
(719, 74, '渭源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weiyuan'),
(720, 74, '临洮', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lin'),
(721, 74, '漳县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangxian'),
(722, 74, '岷县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(723, 75, '武都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wudu'),
(724, 75, '成县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengxian'),
(725, 75, '文县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wenxian'),
(726, 75, '宕昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chang'),
(727, 75, '康县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kangxian'),
(728, 75, '西和', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xihe'),
(729, 75, '礼县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lixian'),
(730, 75, '徽县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huixian'),
(731, 75, '两当', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liangdang'),
(732, 76, '临夏市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linxiashi'),
(733, 76, '临夏县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linxiaxian'),
(734, 76, '康乐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kangle'),
(735, 76, '永靖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongjing'),
(736, 76, '广河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guanghe'),
(737, 76, '和政', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hezheng'),
(738, 76, '东乡族', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongxiangzu'),
(739, 76, '积石山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jishishan'),
(740, 77, '合作', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hezuo'),
(741, 77, '临潭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lintan'),
(742, 77, '卓尼', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhuoni'),
(743, 77, '舟曲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhouqu'),
(744, 77, '迭部', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'diebu'),
(745, 77, '玛曲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'maqu'),
(746, 77, '碌曲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luqu'),
(747, 77, '夏河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiahe'),
(748, 78, '青秀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingxiu'),
(749, 78, '兴宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingning'),
(750, 78, '西乡塘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xixiangtang'),
(751, 78, '良庆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liangqing'),
(752, 78, '邕宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ning'),
(753, 78, '武鸣', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuming'),
(754, 78, '横县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hengxian'),
(755, 78, '宾阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'binyang'),
(756, 78, '上林', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shanglin'),
(757, 78, '隆安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longan'),
(758, 78, '马山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mashan'),
(759, 78, '江南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangnan'),
(760, 79, '城中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengzhong'),
(761, 79, '鱼峰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yufeng'),
(762, 79, '柳南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liunan'),
(763, 79, '柳北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liubei'),
(764, 79, '融安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rongan'),
(765, 79, '柳城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liucheng'),
(766, 79, '柳江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liujiang'),
(767, 79, '鹿寨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luzhai'),
(768, 79, '三江侗族自治县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sanjiangdongzuzizhixian'),
(769, 79, '融水苗族自治县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rongshuimiaozuzizhixian'),
(770, 80, '秀峰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiufeng'),
(771, 80, '叠彩', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'diecai'),
(772, 80, '象山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangshan'),
(773, 80, '七星', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qixing'),
(774, 80, '雁山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanshan'),
(775, 80, '阳朔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangshuo'),
(776, 80, '临桂', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingui'),
(777, 80, '灵川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingchuan'),
(778, 80, '全州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'quanzhou'),
(779, 80, '兴安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingan'),
(780, 80, '永福', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongfu'),
(781, 80, '灌阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guanyang'),
(782, 80, '龙胜', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longsheng'),
(783, 80, '资源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ziyuan'),
(784, 80, '平乐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingle'),
(785, 80, '荔蒲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lipu'),
(786, 80, '恭城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gongcheng'),
(787, 81, '万秀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wanxiu'),
(788, 81, '蝶山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dieshan'),
(789, 81, '长洲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changzhou'),
(790, 81, '苍梧', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cangwu'),
(791, 81, '藤县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tengxian'),
(792, 81, '蒙山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mengshan'),
(793, 81, '岑溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xi'),
(794, 82, '港北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gangbei'),
(795, 82, '港南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gangnan'),
(796, 82, '覃塘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tang'),
(797, 82, '平南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingnan'),
(798, 82, '桂平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guiping'),
(799, 83, '钦南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinnan'),
(800, 83, '钦北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinbei'),
(801, 83, '灵山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingshan'),
(802, 83, '浦北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pubei'),
(803, 84, '海城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haicheng'),
(804, 84, '银海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yinhai'),
(805, 84, '铁山港', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tieshangang'),
(806, 84, '合浦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hepu'),
(807, 85, '港口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gangkou'),
(808, 85, '防城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fangcheng'),
(809, 85, '上思', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangsi'),
(810, 85, '东兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongxing'),
(811, 86, '江州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangzhou'),
(812, 86, '扶绥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fusui'),
(813, 86, '宁明', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningming'),
(814, 86, '龙州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longzhou'),
(815, 86, '大新', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daxin'),
(816, 86, '天等', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tiandeng'),
(817, 86, '凭祥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingxiang'),
(818, 87, '右江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'youjiang'),
(819, 87, '田阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianyang'),
(820, 87, '田东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tiandong'),
(821, 87, '平果', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingguo'),
(822, 87, '德保', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'debao'),
(823, 87, '靖西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingxi'),
(824, 87, '那坡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'napo'),
(825, 87, '凌云', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingyun'),
(826, 87, '乐业', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'leye'),
(827, 87, '田林', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianlin'),
(828, 87, '西林', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xilin'),
(829, 87, '隆林', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longlin'),
(830, 88, '金城江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinchengjiang'),
(831, 88, '南丹', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nandan'),
(832, 88, '天峨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tiane'),
(833, 88, '凤山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengshan'),
(834, 88, '东兰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'donglan'),
(835, 88, '罗城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luocheng'),
(836, 88, '环江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huanjiang'),
(837, 88, '巴马', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bama'),
(838, 88, '都安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'duan'),
(839, 88, '大化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dahua'),
(840, 88, '宜州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yizhou'),
(841, 89, '兴宾', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingbin'),
(842, 89, '忻城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xincheng'),
(843, 89, '象州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangzhou'),
(844, 89, '武宣', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuxuan'),
(845, 89, '金秀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinxiu'),
(846, 89, '合山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'heshan'),
(847, 90, '八步', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'babu'),
(848, 90, '昭平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhaoping'),
(849, 90, '钟山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhongshan'),
(850, 90, '富川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuchuan'),
(851, 91, '玉东新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yudongxinqu'),
(852, 91, '玉州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuzhou'),
(853, 91, '北流', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beiliu'),
(854, 91, '容县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rongxian'),
(855, 91, '陆川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luchuan'),
(856, 91, '博白', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bobai'),
(857, 91, '兴业', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingye'),
(858, 91, '福绵管理区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fumianguanliqu'),
(859, 92, '金阳新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinyangxinqu'),
(860, 92, '南明', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanming'),
(861, 92, '云岩', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunyan'),
(862, 92, '花溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaxi'),
(863, 92, '乌当', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wudang'),
(864, 92, '白云', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baiyun'),
(865, 92, '小河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiaohe'),
(866, 92, '清镇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingzhen'),
(867, 92, '开阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaiyang'),
(868, 92, '修文', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiuwen'),
(869, 92, '息烽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xifeng'),
(870, 93, '钟山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhongshan'),
(871, 93, '六枝', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liuzhi'),
(872, 93, '水城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuicheng'),
(873, 93, '盘县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'panxian'),
(874, 94, '新蒲新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinpuxinqu'),
(875, 94, '红花岗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'honghuagang'),
(876, 94, '汇川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huichuan'),
(877, 94, '遵义县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zunyixian'),
(878, 94, '桐梓', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tong'),
(879, 94, '绥阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suiyang'),
(880, 94, '正安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhengan'),
(881, 94, '道真', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daozhen'),
(882, 94, '务川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuchuan'),
(883, 94, '凤冈', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fenggang'),
(884, 94, '湄潭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tan'),
(885, 94, '余庆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuqing'),
(886, 94, '习水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xishui'),
(887, 94, '赤水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chishui'),
(888, 94, '仁怀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'renhuai'),
(889, 95, '开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifaqu'),
(890, 95, '西秀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xixiu'),
(891, 95, '平坝', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingba'),
(892, 95, '普定', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'puding'),
(893, 95, '镇宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhenning'),
(894, 95, '关岭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guanling'),
(895, 95, '紫云', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ziyun'),
(896, 96, '都匀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'duyun'),
(897, 96, '福泉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuquan'),
(898, 96, '荔波', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'libo');
INSERT INTO `qb_fenlei_zone` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `dirname`) VALUES
(899, 96, '贵定', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guiding'),
(900, 96, '瓮安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wengan'),
(901, 96, '独山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dushan'),
(902, 96, '平塘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingtang'),
(903, 96, '罗甸', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luodian'),
(904, 96, '长顺', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changshun'),
(905, 96, '龙里', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longli'),
(906, 96, '惠水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huishui'),
(907, 96, '三都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sandu'),
(908, 97, '凯里', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaili'),
(909, 97, '黄平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangping'),
(910, 97, '施秉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shibing'),
(911, 97, '三穗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sansui'),
(912, 97, '镇远', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhenyuan'),
(913, 97, '岑巩', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gong'),
(914, 97, '天柱', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianzhu'),
(915, 97, '锦屏', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinping'),
(916, 97, '剑河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianhe'),
(917, 97, '台江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taijiang'),
(918, 97, '黎平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liping'),
(919, 97, '榕江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiang'),
(920, 97, '从江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'congjiang'),
(921, 97, '雷山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'leishan'),
(922, 97, '麻江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'majiang'),
(923, 97, '丹寨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'danzhai'),
(924, 98, '兴义', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingyi'),
(925, 98, '兴仁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingren'),
(926, 98, '普安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'puan'),
(927, 98, '晴隆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinglong'),
(928, 98, '贞丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhenfeng'),
(929, 98, '望谟', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wang'),
(930, 98, '册亨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ceheng'),
(931, 98, '安龙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anlong'),
(932, 99, '七星关/毕节', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qixingguan_bijie'),
(933, 99, '大方', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dafang'),
(934, 99, '黔西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qianxi'),
(935, 99, '金沙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinsha'),
(936, 99, '织金', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhijin'),
(937, 99, '纳雍', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nayong'),
(938, 99, '威宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weining'),
(939, 99, '赫章', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hezhang'),
(940, 100, '碧江/铜仁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bijiang_tongren'),
(941, 100, '江口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangkou'),
(942, 100, '玉屏', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuping'),
(943, 100, '石阡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shi'),
(944, 100, '思南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sinan'),
(945, 100, '印江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yinjiang'),
(946, 100, '德江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dejiang'),
(947, 100, '沿河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanhe'),
(948, 100, '松桃', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'songtao'),
(949, 100, '万山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wanshan'),
(950, 101, '龙华', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longhua'),
(951, 101, '秀英', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiuying'),
(952, 101, '琼山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qiongshan'),
(953, 101, '美兰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'meilan'),
(954, 102, '河西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hexi'),
(955, 102, '河东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hedong'),
(956, 102, '海棠湾', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haitangwan'),
(957, 102, '吉阳/田独', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiyang_tiandu'),
(958, 102, '凤凰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fenghuang'),
(959, 102, '崖城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yacheng'),
(960, 102, '天涯', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianya'),
(961, 102, '育才', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yucai'),
(974, 104, '肃宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suning'),
(975, 104, '南皮', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanpi'),
(976, 104, '吴桥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuqiao'),
(977, 104, '献县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xianxian'),
(978, 104, '孟村', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mengcun'),
(979, 106, '邯山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hanshan'),
(980, 106, '丛台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'congtai'),
(981, 106, '复兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuxing'),
(982, 106, '峰峰矿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengfengkuang'),
(983, 106, '邯郸', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'handan'),
(984, 106, '临漳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linzhang'),
(985, 106, '成安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengan'),
(986, 106, '大名', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daming'),
(987, 106, '涉县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shexian'),
(988, 106, '磁县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cixian'),
(989, 106, '肥乡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'feixiang'),
(990, 106, '永年', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongnian'),
(991, 106, '邱县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qiuxian'),
(992, 106, '鸡泽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jize'),
(993, 106, '广平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangping'),
(994, 106, '馆陶', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guantao'),
(995, 106, '魏县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weixian'),
(996, 106, '曲周', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'quzhou'),
(997, 106, '武安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuan'),
(998, 107, '桥东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qiaodong'),
(999, 107, '桥西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qiaoxi'),
(1000, 107, '邢台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingtai'),
(1001, 107, '临城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lincheng'),
(1002, 107, '内丘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'neiqiu'),
(1003, 107, '柏乡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baixiang'),
(1004, 107, '隆尧', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longyao'),
(1005, 107, '任县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'renxian'),
(1006, 107, '南和', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanhe'),
(1007, 107, '宁晋', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningjin'),
(1008, 107, '巨鹿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'julu'),
(1009, 107, '新河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinhe'),
(1010, 107, '广宗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangzong'),
(1011, 107, '平乡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingxiang'),
(1012, 107, '威县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weixian'),
(1013, 107, '清河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinghe'),
(1014, 107, '临西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linxi'),
(1015, 107, '南宫', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nangong'),
(1016, 107, '沙河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shahe'),
(1017, 108, '新市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinshi'),
(1018, 108, '北市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beishi'),
(1019, 108, '南市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanshi'),
(1020, 108, '满城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mancheng'),
(1021, 108, '清苑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingyuan'),
(1022, 108, '涞水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shui'),
(1023, 108, '阜平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuping'),
(1024, 108, '徐水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xushui'),
(1025, 108, '定兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dingxing'),
(1026, 108, '唐县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tangxian'),
(1027, 108, '高阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoyang'),
(1028, 108, '容城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rongcheng'),
(1029, 108, '涞源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuan'),
(1030, 108, '望都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wangdu'),
(1031, 108, '安新', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anxin'),
(1032, 108, '易县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yixian'),
(1033, 108, '曲阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'quyang'),
(1034, 108, '蠡县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(1035, 108, '顺平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shunping'),
(1036, 108, '博野', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'boye'),
(1037, 108, '雄县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiongxian'),
(1038, 108, '涿州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhou'),
(1039, 108, '定州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dingzhou'),
(1040, 108, '安国', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anguo'),
(1041, 108, '高碑店', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaobeidian'),
(1042, 109, '宣化县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xuanhuaxian'),
(1043, 109, '塞北管理区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'saibeiguanliqu'),
(1044, 109, '高新技术开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinjishukaifaqu'),
(1045, 109, '产业集聚区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chanyejijuqu'),
(1046, 109, '察北管理区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chabeiguanliqu'),
(1047, 109, '桥东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qiaodong'),
(1048, 109, '桥西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qiaoxi'),
(1049, 109, '宣化区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xuanhuaqu'),
(1050, 109, '下花园', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiahuayuan'),
(1051, 109, '张北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangbei'),
(1052, 109, '康保', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kangbao'),
(1053, 109, '沽源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guyuan'),
(1054, 109, '尚义', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangyi'),
(1055, 109, '蔚县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weixian'),
(1056, 109, '阳原', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangyuan'),
(1057, 109, '怀安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaian'),
(1058, 109, '万全', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wanquan'),
(1059, 109, '怀来', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huailai'),
(1060, 109, '涿鹿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lu'),
(1061, 109, '赤城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chicheng'),
(1062, 109, '崇礼', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chongli'),
(1063, 110, '双桥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangqiao'),
(1064, 110, '双滦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangluan'),
(1065, 110, '鹰手营子', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yingshouyingzi'),
(1066, 110, '承德', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengde'),
(1067, 110, '兴隆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinglong'),
(1068, 110, '平泉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingquan'),
(1069, 110, '滦平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luanping'),
(1070, 110, '隆化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longhua'),
(1071, 110, '丰宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengning'),
(1072, 110, '宽城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kuancheng'),
(1073, 110, '围场', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weichang'),
(1074, 111, '路北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lubei'),
(1075, 111, '路南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lunan'),
(1076, 111, '古冶', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guye'),
(1077, 111, '开平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaiping'),
(1078, 111, '丰南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengnan'),
(1079, 111, '丰润', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengrun'),
(1080, 111, '遵化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zunhua'),
(1081, 111, '滦县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luanxian'),
(1082, 111, '滦南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luannan'),
(1083, 111, '乐亭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'leting'),
(1084, 111, '迁西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qianxi'),
(1085, 111, '玉田', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yutian'),
(1086, 111, '曹妃甸/唐海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'caodian_tanghai'),
(1087, 111, '迁安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qianan'),
(1088, 112, '安次', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anci'),
(1089, 112, '广阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangyang'),
(1090, 112, '固安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guan'),
(1091, 112, '永清', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongqing'),
(1092, 112, '香河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xianghe'),
(1093, 112, '大城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dacheng'),
(1094, 112, '文安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wenan'),
(1095, 112, '大厂', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dachang'),
(1096, 112, '霸州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bazhou'),
(1097, 112, '三河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sanhe'),
(1098, 113, '桃城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taocheng'),
(1099, 113, '枣强', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zaoqiang'),
(1100, 113, '武邑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuyi'),
(1101, 113, '武强', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuqiang'),
(1102, 113, '饶阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'raoyang'),
(1103, 113, '安平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anping'),
(1104, 113, '故城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gucheng'),
(1105, 113, '景县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingxian'),
(1106, 113, '阜城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fucheng'),
(1107, 113, '冀州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jizhou'),
(1108, 113, '深州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shenzhou'),
(1109, 114, '海港', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haigang'),
(1110, 114, '山海关', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shanhaiguan'),
(1111, 114, '北戴河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beidaihe'),
(1112, 114, '青龙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinglong'),
(1113, 114, '昌黎', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changli'),
(1114, 114, '抚宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'funing'),
(1115, 114, '卢龙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lulong'),
(1116, 115, '经济技术开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingjijishukaifaqu'),
(1117, 115, '中原', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhongyuan'),
(1118, 115, '金水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinshui'),
(1119, 115, '管城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guancheng'),
(1120, 115, '二七', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'erqi'),
(1121, 115, '上街', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangjie'),
(1122, 115, '惠济', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huiji'),
(1123, 115, '郑州新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhengzhouxinqu'),
(1124, 115, '巩义', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gongyi'),
(1125, 115, '荥阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yang'),
(1126, 115, '新密', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinmi'),
(1127, 115, '新郑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinzheng'),
(1128, 115, '登封', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dengfeng'),
(1129, 115, '中牟', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhongmou'),
(1130, 115, '高新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinqu'),
(1131, 116, '解放', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiefang'),
(1132, 116, '山阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shanyang'),
(1133, 116, '马村', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'macun'),
(1134, 116, '中站', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhongzhan'),
(1135, 116, '高新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinqu'),
(1136, 116, '沁阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinyang'),
(1137, 116, '博爱', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'boai'),
(1138, 116, '修武', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiuwu'),
(1139, 116, '武陟', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wu'),
(1140, 116, '孟州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mengzhou'),
(1141, 116, '温县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wenxian'),
(1142, 117, '西工', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xigong'),
(1143, 117, '涧西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianxi'),
(1144, 117, '老城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'laocheng'),
(1145, 117, '瀍河回族区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', '瀍hehuizuqu'),
(1146, 117, '洛龙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luolong'),
(1147, 117, '吉利', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jili'),
(1148, 117, '偃师', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shi'),
(1149, 117, '新安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinan'),
(1150, 117, '伊川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yichuan'),
(1151, 117, '汝阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ruyang'),
(1152, 117, '洛宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luoning'),
(1153, 117, '孟津', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mengjin'),
(1154, 117, '宜阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yiyang'),
(1155, 117, '嵩县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(1156, 117, '栾川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chuan'),
(1157, 118, '浉河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', '沠uyin'),
(1158, 118, '平桥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingqiao'),
(1159, 118, '罗山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luoshan'),
(1160, 118, '光山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangshan'),
(1161, 118, '新县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinxian'),
(1162, 118, '商城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangcheng'),
(1163, 118, '固始', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gushi'),
(1164, 118, '潢川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chuan'),
(1165, 118, '淮滨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaibin'),
(1166, 118, '息县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xixian'),
(1167, 118, '羊山新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangshanxinqu'),
(1168, 119, '驿城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(1169, 119, '西平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiping'),
(1170, 119, '上蔡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangcai'),
(1171, 119, '平舆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingyu'),
(1172, 119, '正阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhengyang'),
(1173, 119, '确山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'queshan'),
(1174, 119, '泌阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'miyang'),
(1175, 119, '汝南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'runan'),
(1176, 119, '遂平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suiping'),
(1177, 119, '新蔡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xincai'),
(1178, 119, '高新开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinkaifaqu'),
(1179, 120, '鹤山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'heshan'),
(1180, 120, '山城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shancheng'),
(1181, 120, '淇滨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bin'),
(1182, 120, '浚县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'junxian'),
(1183, 120, '淇县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(1184, 121, '红旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongqi'),
(1185, 121, '卫滨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weibin'),
(1186, 121, '凤泉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengquan'),
(1187, 121, '牧野', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'muye'),
(1188, 121, '新乡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinxiang'),
(1189, 121, '获嘉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huojia'),
(1190, 121, '原阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuanyang'),
(1191, 121, '延津', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanjin'),
(1192, 121, '封丘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengqiu'),
(1193, 121, '长垣', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changyuan'),
(1194, 121, '卫辉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weihui'),
(1195, 121, '辉县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huixian'),
(1196, 122, '安阳新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anyangxinqu'),
(1197, 122, '文峰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wenfeng'),
(1198, 122, '北关', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beiguan'),
(1199, 122, '殷都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yindu'),
(1200, 122, '龙安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longan'),
(1201, 122, '安阳县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anyangxian'),
(1202, 122, '汤阴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tangyin'),
(1203, 122, '滑县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaxian'),
(1204, 122, '内黄', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'neihuang'),
(1205, 122, '林州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linzhou'),
(1206, 123, '华龙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hualong'),
(1207, 123, '清丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingfeng'),
(1208, 123, '南乐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanle'),
(1209, 123, '范县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fanxian'),
(1210, 123, '台前', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taiqian'),
(1211, 123, '濮阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yang'),
(1212, 124, '魏都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weidu'),
(1213, 124, '许昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xuchang'),
(1214, 124, '鄢陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ling'),
(1215, 124, '襄城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangcheng'),
(1216, 124, '禹州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuzhou'),
(1217, 124, '长葛', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changge'),
(1218, 125, '源汇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuanhui'),
(1219, 125, '郾城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(1220, 125, '召陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhaoling'),
(1221, 125, '舞阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuyang'),
(1222, 125, '临颍', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lin'),
(1223, 126, '湖滨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hubin'),
(1224, 126, '渑池', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chi'),
(1225, 126, '陕县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shanxian'),
(1226, 126, '卢氏', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lushi'),
(1227, 126, '义马', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yima'),
(1228, 126, '灵宝', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingbao'),
(1229, 127, '南阳新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanyangxinqu'),
(1230, 127, '高新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinqu'),
(1231, 127, '卧龙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wolong'),
(1232, 127, '宛城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wancheng'),
(1233, 127, '邓州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dengzhou'),
(1234, 127, '南召', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanzhao'),
(1235, 127, '方城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fangcheng'),
(1236, 127, '西峡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xixia'),
(1237, 127, '镇平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhenping'),
(1238, 127, '内乡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'neixiang'),
(1239, 127, '淅川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chuan'),
(1240, 127, '社旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sheqi'),
(1241, 127, '唐河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tanghe'),
(1242, 127, '新野', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinye'),
(1243, 127, '桐柏', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongbai'),
(1244, 128, '梁园', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liangyuan'),
(1245, 128, '睢阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yang'),
(1246, 128, '民权', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'minquan'),
(1247, 128, '睢县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(1248, 128, '宁陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningling'),
(1249, 128, '柘城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(1250, 128, '虞城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yucheng'),
(1251, 128, '夏邑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiayi'),
(1252, 128, '永城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongcheng'),
(1253, 129, '新华', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinhua'),
(1254, 129, '卫东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weidong'),
(1255, 129, '石龙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shilong'),
(1256, 129, '湛河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhanhe'),
(1257, 129, '宝丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baofeng'),
(1258, 129, '叶县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yexian'),
(1259, 129, '鲁山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lushan'),
(1260, 129, '郏县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(1261, 129, '舞钢', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wugang'),
(1262, 129, '汝州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ruzhou'),
(1263, 130, '川汇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chuanhui'),
(1264, 130, '扶沟', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fugou'),
(1265, 130, '西华', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xihua'),
(1266, 130, '商水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangshui'),
(1267, 130, '沈丘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shenqiu'),
(1268, 130, '郸城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dancheng'),
(1269, 130, '淮阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaiyang'),
(1270, 130, '太康', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taikang'),
(1271, 130, '鹿邑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luyi'),
(1272, 130, '项城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangcheng'),
(1273, 131, '龙亭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longting'),
(1274, 131, '顺河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shunhe'),
(1275, 131, '鼓楼', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gulou'),
(1276, 131, '禹王台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuwangtai'),
(1277, 131, '金明', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinming'),
(1278, 131, '杞县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(1279, 131, '通许', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongxu'),
(1280, 131, '尉氏', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weishi'),
(1281, 131, '开封县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifengxian'),
(1282, 131, '兰考', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lankao'),
(1283, 132, '道里', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daoli'),
(1284, 132, '南岗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nangang'),
(1285, 132, '平房', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingfang'),
(1286, 132, '香坊', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangfang'),
(1287, 132, '松北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'songbei'),
(1288, 132, '道外', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daowai'),
(1289, 132, '呼兰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hulan'),
(1290, 132, '阿城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'acheng'),
(1291, 132, '依兰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yilan'),
(1292, 132, '方正', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fangzheng'),
(1293, 132, '宾县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'binxian'),
(1294, 132, '巴彦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bayan'),
(1295, 132, '木兰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mulan'),
(1296, 132, '通河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tonghe'),
(1297, 132, '延寿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanshou'),
(1298, 132, '双城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangcheng'),
(1299, 132, '尚志', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangzhi'),
(1300, 132, '五常', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuchang'),
(1301, 133, '龙沙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longsha'),
(1302, 133, '建华', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianhua'),
(1303, 133, '铁锋', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tiefeng'),
(1304, 133, '昂昂溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'angangxi'),
(1305, 133, '富拉尔基', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fulaerji'),
(1306, 133, '碾子山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nianzishan'),
(1307, 133, '梅里斯达斡尔族', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'meilisidawoerzu'),
(1308, 133, '龙江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longjiang'),
(1309, 133, '依安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yian'),
(1310, 133, '泰来', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tailai'),
(1311, 133, '甘南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gannan'),
(1312, 133, '富裕', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuyu'),
(1313, 133, '克山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'keshan'),
(1314, 133, '克东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kedong'),
(1315, 133, '拜泉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baiquan'),
(1316, 133, '讷河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'he'),
(1317, 134, '鸡冠', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiguan'),
(1318, 134, '恒山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hengshan'),
(1319, 134, '滴道', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'didao'),
(1320, 134, '梨树', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lishu'),
(1321, 134, '城子河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengzihe'),
(1322, 134, '麻山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mashan'),
(1323, 134, '鸡东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jidong'),
(1324, 134, '虎林', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hulin'),
(1325, 134, '密山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mishan'),
(1326, 135, '向阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangyang'),
(1327, 135, '工农', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gongnong'),
(1328, 135, '南山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanshan'),
(1329, 135, '兴安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingan'),
(1330, 135, '东山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongshan'),
(1331, 135, '兴山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingshan'),
(1332, 135, '萝北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luobei'),
(1333, 135, '绥滨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suibin'),
(1334, 136, '尖山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianshan'),
(1335, 136, '岭东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingdong'),
(1336, 136, '四方台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sifangtai'),
(1337, 136, '宝山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baoshan'),
(1338, 136, '集贤', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jixian'),
(1339, 136, '友谊', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'youyi'),
(1340, 136, '宝清', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baoqing'),
(1341, 136, '饶河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'raohe'),
(1342, 137, '萨尔图', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'saertu'),
(1343, 137, '龙凤', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longfeng'),
(1344, 137, '让胡路', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ranghulu'),
(1345, 137, '红岗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'honggang'),
(1346, 137, '大同', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'datong'),
(1347, 137, '肇州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhaozhou'),
(1348, 137, '肇源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhaoyuan'),
(1349, 137, '林甸', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lindian'),
(1350, 137, '杜尔伯特', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'duerbote'),
(1351, 138, '伊春区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yichunqu'),
(1352, 138, '南岔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nancha');
INSERT INTO `qb_fenlei_zone` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `dirname`) VALUES
(1353, 138, '友好', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'youhao'),
(1354, 138, '西林', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xilin'),
(1355, 138, '翠峦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cuiluan'),
(1356, 138, '新青', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinqing'),
(1357, 138, '美溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'meixi'),
(1358, 138, '金山屯', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinshantun'),
(1359, 138, '五营', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuying'),
(1360, 138, '乌马河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wumahe'),
(1361, 138, '汤旺河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tangwanghe'),
(1362, 138, '带岭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dailing'),
(1363, 138, '乌伊岭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuyiling'),
(1364, 138, '红星', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongxing'),
(1365, 138, '上甘岭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangganling'),
(1366, 138, '嘉荫', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiayin'),
(1367, 138, '铁力', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tieli'),
(1368, 139, '向阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangyang'),
(1369, 139, '前进', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qianjin'),
(1370, 139, '东风', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongfeng'),
(1371, 139, '郊区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiaoqu'),
(1372, 139, '桦南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nan'),
(1373, 139, '桦川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chuan'),
(1374, 139, '汤原', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tangyuan'),
(1375, 139, '抚远', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuyuan'),
(1376, 139, '同江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongjiang'),
(1377, 139, '富锦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fujin'),
(1378, 140, '新兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinxing'),
(1379, 140, '桃山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taoshan'),
(1380, 140, '茄子河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qiezihe'),
(1381, 140, '勃利', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'boli'),
(1382, 142, '爱辉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'aihui'),
(1383, 142, '嫩江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nenjiang'),
(1384, 142, '逊克', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xunke'),
(1385, 142, '孙吴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sunwu'),
(1386, 142, '北安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beian'),
(1387, 142, '五大连池', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wudalianchi'),
(1388, 143, '北林', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beilin'),
(1389, 143, '望奎', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wangkui'),
(1390, 143, '兰西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lanxi'),
(1391, 143, '青冈', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinggang'),
(1392, 143, '庆安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingan'),
(1393, 143, '明水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mingshui'),
(1394, 143, '绥棱', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suileng'),
(1395, 143, '安达', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anda'),
(1396, 143, '肇东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhaodong'),
(1397, 143, '海伦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hailun'),
(1398, 144, '新林', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinlin'),
(1399, 144, '塔河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tahe'),
(1400, 144, '松岭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'songling'),
(1401, 144, '漠河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mohe'),
(1402, 144, '加格达奇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiagedaqi'),
(1403, 144, '呼中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huzhong'),
(1404, 144, '呼玛', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huma'),
(1405, 145, '江岸', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangan'),
(1406, 145, '武昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuchang'),
(1407, 145, '江汉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianghan'),
(1408, 145, '硚口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changkou'),
(1409, 145, '汉阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hanyang'),
(1410, 145, '青山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingshan'),
(1411, 145, '洪山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongshan'),
(1412, 145, '蔡甸', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'caidian'),
(1413, 145, '江夏', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangxia'),
(1414, 145, '黄陂', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huang'),
(1415, 145, '新洲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinzhou'),
(1416, 145, '东西湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongxihu'),
(1417, 145, '汉南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hannan'),
(1418, 146, '高新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinqu'),
(1419, 146, '襄城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangcheng'),
(1420, 146, '樊城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fancheng'),
(1421, 146, '襄州/襄阳区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangzhou_xiangyangqu'),
(1422, 146, '南漳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanzhang'),
(1423, 146, '谷城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gucheng'),
(1424, 146, '保康', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baokang'),
(1425, 146, '老河口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'laohekou'),
(1426, 146, '枣阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zaoyang'),
(1427, 146, '宜城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yicheng'),
(1428, 147, '黄山开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangshankaifaqu'),
(1429, 147, '黄石港', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangshigang'),
(1430, 147, '西塞山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xisaishan'),
(1431, 147, '下陆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xialu'),
(1432, 147, '铁山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tieshan'),
(1433, 147, '阳新', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangxin'),
(1434, 147, '大冶', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daye'),
(1435, 148, '茅箭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'maojian'),
(1436, 148, '张湾', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangwan'),
(1437, 148, '郧县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunxian'),
(1438, 148, '郧西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunxi'),
(1439, 148, '竹山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhushan'),
(1440, 148, '竹溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhuxi'),
(1441, 148, '房县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fangxian'),
(1442, 148, '丹江口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'danjiangkou'),
(1443, 149, '随县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suixian'),
(1444, 149, '曾都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zengdu'),
(1445, 149, '广水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangshui'),
(1446, 150, '西陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiling'),
(1447, 150, '伍家岗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wujiagang'),
(1448, 150, '点军', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dianjun'),
(1449, 150, '猇亭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ting'),
(1450, 150, '夷陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yiling'),
(1451, 150, '秭归', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gui'),
(1452, 150, '当阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dangyang'),
(1453, 150, '枝江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhijiang'),
(1454, 150, '远安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuanan'),
(1455, 150, '长阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changyang'),
(1456, 150, '宜都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yidu'),
(1457, 150, '兴山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingshan'),
(1458, 150, '五峰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wufeng'),
(1459, 151, '荆州经济开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingzhoujingjikaifaqu'),
(1460, 151, '沙市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shashi'),
(1461, 151, '荆州区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingzhouqu'),
(1462, 151, '公安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gongan'),
(1463, 151, '监利', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianli'),
(1464, 151, '江陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangling'),
(1465, 151, '石首', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shishou'),
(1466, 151, '洪湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'honghu'),
(1467, 151, '松滋', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'songzi'),
(1468, 152, '咸安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xianan'),
(1469, 152, '嘉鱼', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiayu'),
(1470, 152, '通城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongcheng'),
(1471, 152, '崇阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chongyang'),
(1472, 152, '通山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongshan'),
(1473, 152, '赤壁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chibi'),
(1474, 153, '梁子湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liangzihu'),
(1475, 153, '华容', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huarong'),
(1476, 153, '鄂城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'echeng'),
(1477, 154, '黄州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangzhou'),
(1478, 154, '团风', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tuanfeng'),
(1479, 154, '红安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongan'),
(1480, 154, '罗田', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luotian'),
(1481, 154, '英山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yingshan'),
(1482, 154, '浠水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shui'),
(1483, 154, '蕲春', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chun'),
(1484, 154, '黄梅', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangmei'),
(1485, 154, '麻城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'macheng'),
(1486, 154, '武穴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuxue'),
(1487, 155, '孝南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiaonan'),
(1488, 155, '孝昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiaochang'),
(1489, 155, '大悟', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dawu'),
(1490, 155, '云梦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunmeng'),
(1491, 155, '应城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yingcheng'),
(1492, 155, '安陆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anlu'),
(1493, 155, '汉川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hanchuan'),
(1494, 156, '东宝', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongbao'),
(1495, 156, '掇刀', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'duodao'),
(1496, 156, '京山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingshan'),
(1497, 156, '沙洋', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shayang'),
(1498, 156, '钟祥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhongxiang'),
(1499, 157, '恩施市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'enshishi'),
(1500, 157, '利川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lichuan'),
(1501, 157, '建始', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianshi'),
(1502, 157, '巴东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'badong'),
(1503, 157, '宣恩', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xuanen'),
(1504, 157, '咸丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xianfeng'),
(1505, 157, '来凤', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'laifeng'),
(1506, 157, '鹤峰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hefeng'),
(1507, 159, '云龙示范区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunlongshifanqu'),
(1508, 159, '荷塘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hetang'),
(1509, 159, '芦淞', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lu'),
(1510, 159, '石峰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shifeng'),
(1511, 159, '天元', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianyuan'),
(1512, 159, '株洲县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhuzhouxian'),
(1513, 159, '攸县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(1514, 159, '茶陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chaling'),
(1515, 159, '炎陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanling'),
(1516, 159, '醴陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ling'),
(1517, 160, '雨湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuhu'),
(1518, 160, '岳塘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuetang'),
(1519, 160, '湘潭县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangtanxian'),
(1520, 160, '湘乡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangxiang'),
(1521, 160, '韶山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shaoshan'),
(1522, 161, '珠晖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhu'),
(1523, 161, '雁峰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanfeng'),
(1524, 161, '石鼓', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shigu'),
(1525, 161, '蒸湘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhengxiang'),
(1526, 161, '南岳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanyue'),
(1527, 161, '衡阳县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hengyangxian'),
(1528, 161, '衡南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hengnan'),
(1529, 161, '衡山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hengshan'),
(1530, 161, '衡东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hengdong'),
(1531, 161, '祁东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qidong'),
(1532, 161, '耒阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yang'),
(1533, 161, '常宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changning'),
(1534, 162, '双清', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangqing'),
(1535, 162, '大祥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daxiang'),
(1536, 162, '北塔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beita'),
(1537, 162, '邵东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shaodong'),
(1538, 162, '新邵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinshao'),
(1539, 162, '邵阳县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shaoyangxian'),
(1540, 162, '隆回', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longhui'),
(1541, 162, '洞口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongkou'),
(1542, 162, '绥宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suining'),
(1543, 162, '新宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinning'),
(1544, 162, '城步', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengbu'),
(1545, 162, '武冈', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wugang'),
(1546, 163, '岳阳楼', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yueyanglou'),
(1547, 163, '云溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunxi'),
(1548, 163, '君山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'junshan'),
(1549, 163, '岳阳县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yueyangxian'),
(1550, 163, '华容', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huarong'),
(1551, 163, '湘阴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangyin'),
(1552, 163, '平江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingjiang'),
(1553, 163, '汨罗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luo'),
(1554, 163, '临湘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linxiang'),
(1555, 164, '武陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuling'),
(1556, 164, '鼎城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dingcheng'),
(1557, 164, '安乡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anxiang'),
(1558, 164, '汉寿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hanshou'),
(1559, 164, '澧县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(1560, 164, '临澧', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lin'),
(1561, 164, '桃源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taoyuan'),
(1562, 164, '石门', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shimen'),
(1563, 164, '津市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinshi'),
(1564, 165, '永定', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongding'),
(1565, 165, '武陵源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wulingyuan'),
(1566, 165, '慈利', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cili'),
(1567, 165, '桑植', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sangzhi'),
(1568, 166, '大通湖区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'datonghuqu'),
(1569, 166, '资阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ziyang'),
(1570, 166, '赫山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'heshan'),
(1571, 166, '南县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanxian'),
(1572, 166, '桃江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taojiang'),
(1573, 166, '安化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anhua'),
(1574, 166, '沅江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiang'),
(1575, 167, '北湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beihu'),
(1576, 167, '苏仙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suxian'),
(1577, 167, '桂阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guiyang'),
(1578, 167, '宜章', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yizhang'),
(1579, 167, '永兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongxing'),
(1580, 167, '嘉禾', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiahe'),
(1581, 167, '临武', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linwu'),
(1582, 167, '汝城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rucheng'),
(1583, 167, '桂东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guidong'),
(1584, 167, '安仁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anren'),
(1585, 167, '资兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zixing'),
(1586, 168, '零陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingling'),
(1587, 168, '冷水滩', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lengshuitan'),
(1588, 168, '祁阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qiyang'),
(1589, 168, '东安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongan'),
(1590, 168, '双牌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangpai'),
(1591, 168, '道县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daoxian'),
(1592, 168, '江永', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangyong'),
(1593, 168, '宁远', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningyuan'),
(1594, 168, '蓝山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lanshan'),
(1595, 168, '新田', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xintian'),
(1596, 168, '江华', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianghua'),
(1597, 169, '洪江市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongjiangshi'),
(1598, 169, '鹤城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hecheng'),
(1599, 169, '中方', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhongfang'),
(1600, 169, '沅陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ling'),
(1601, 169, '辰溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chenxi'),
(1602, 169, '溆浦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pu'),
(1603, 169, '会同', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huitong'),
(1604, 169, '麻阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mayang'),
(1605, 169, '新晃', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinhuang'),
(1606, 169, '芷江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiang'),
(1607, 169, '靖州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingzhou'),
(1608, 169, '通道', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongdao'),
(1609, 169, '洪江区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongjiangqu'),
(1610, 170, '娄星', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'louxing'),
(1611, 170, '双峰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangfeng'),
(1612, 170, '新化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinhua'),
(1613, 170, '冷水江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lengshuijiang'),
(1614, 170, '涟源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lianyuan'),
(1615, 171, '吉首', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jishou'),
(1616, 171, '泸溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xi'),
(1617, 171, '凤凰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fenghuang'),
(1618, 171, '花垣', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huayuan'),
(1619, 171, '保靖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baojing'),
(1620, 171, '古丈', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guzhang'),
(1621, 171, '永顺', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongshun'),
(1622, 171, '龙山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longshan'),
(1623, 172, '经济开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingjikaifaqu'),
(1624, 172, '高新开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinkaifaqu'),
(1625, 172, '汽车开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qichekaifaqu'),
(1626, 172, '净月开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingyuekaifaqu'),
(1627, 172, '朝阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chaoyang'),
(1628, 172, '宽城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kuancheng'),
(1629, 172, '二道', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'erdao'),
(1630, 172, '南关', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanguan'),
(1631, 172, '绿园', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lvyuan'),
(1632, 172, '双阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangyang'),
(1633, 172, '德惠', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dehui'),
(1634, 172, '九台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiutai'),
(1635, 172, '榆树', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yushu'),
(1636, 172, '农安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nongan'),
(1637, 173, '昌邑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changyi'),
(1638, 173, '龙潭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longtan'),
(1639, 173, '船营', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chuanying'),
(1640, 173, '丰满', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengman'),
(1641, 173, '永吉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongji'),
(1642, 173, '蛟河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'he'),
(1643, 173, '桦甸', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dian'),
(1644, 173, '舒兰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shulan'),
(1645, 173, '磐石', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'panshi'),
(1646, 174, '铁西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tiexi'),
(1647, 174, '铁东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tiedong'),
(1648, 174, '公主岭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gongzhuling'),
(1649, 174, '双辽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangliao'),
(1650, 174, '梨树', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lishu'),
(1651, 174, '伊通', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yitong'),
(1652, 174, '辽河农垦管理区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liaohenongkenguanliqu'),
(1653, 175, '龙山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longshan'),
(1654, 175, '西安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(1655, 175, '东丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongfeng'),
(1656, 175, '东辽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongliao'),
(1657, 176, '东昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongchang'),
(1658, 176, '二道江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'erdaojiang'),
(1659, 176, '通化县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tonghuaxian'),
(1660, 176, '辉南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huinan'),
(1661, 176, '柳河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liuhe'),
(1662, 176, '梅河口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'meihekou'),
(1663, 176, '集安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jian'),
(1664, 177, '浑江/八道江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hunjiang_badaojiang'),
(1665, 177, '抚松', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fusong'),
(1666, 177, '靖宇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingyu'),
(1667, 177, '长白', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changbai'),
(1668, 177, '江源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangyuan'),
(1669, 177, '临江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linjiang'),
(1670, 178, '宁江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningjiang'),
(1671, 178, '前郭尔罗斯', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qianguoerluosi'),
(1672, 178, '长岭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changling'),
(1673, 178, '乾安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qianan'),
(1674, 178, '扶余', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuyu'),
(1675, 179, '洮北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bei'),
(1676, 179, '镇赉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhen'),
(1677, 179, '通榆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongyu'),
(1678, 179, '洮南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nan'),
(1679, 179, '大安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'daan'),
(1680, 180, '延吉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanji'),
(1681, 180, '图们', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tumen'),
(1682, 180, '敦化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dunhua'),
(1683, 180, '珲春', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chun'),
(1684, 180, '龙井', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longjing'),
(1685, 180, '和龙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'helong'),
(1686, 180, '汪清', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wangqing'),
(1687, 180, '安图', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'antu'),
(1688, 181, '玄武', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xuanwu'),
(1689, 181, '鼓楼', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gulou'),
(1690, 181, '建邺', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jian'),
(1691, 181, '白下', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baixia'),
(1692, 181, '秦淮', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinhuai'),
(1693, 181, '下关', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiaguan'),
(1694, 181, '雨花台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuhuatai'),
(1695, 181, '浦口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pukou'),
(1696, 181, '栖霞', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qixia'),
(1697, 181, '江宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangning'),
(1698, 181, '溧水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shui'),
(1699, 181, '高淳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaochun'),
(1700, 181, '六合', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liuhe'),
(1701, 182, '崇安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chongan'),
(1702, 182, '南长', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanchang'),
(1703, 182, '北塘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beitang'),
(1704, 182, '滨湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'binhu'),
(1705, 182, '锡山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xishan'),
(1706, 182, '惠山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huishan'),
(1707, 182, '新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinqu'),
(1708, 182, '江阴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangyin'),
(1709, 182, '宜兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yixing'),
(1710, 183, '云龙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yunlong'),
(1711, 183, '鼓楼', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gulou'),
(1712, 183, '贾汪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiawang'),
(1713, 183, '泉山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'quanshan'),
(1714, 183, '丰县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengxian'),
(1715, 183, '沛县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'peixian'),
(1716, 183, '铜山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongshan'),
(1717, 183, '睢宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ning'),
(1718, 183, '新沂', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinyi'),
(1719, 183, '邳州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhou'),
(1720, 184, '钟楼', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhonglou'),
(1721, 184, '天宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianning'),
(1722, 184, '戚墅堰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qishuyan'),
(1723, 184, '新北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinbei'),
(1724, 184, '武进', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wujin'),
(1725, 184, '金坛', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jintan'),
(1726, 184, '溧阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yang'),
(1727, 185, '广陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangling'),
(1728, 185, '邗江/维扬', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiang_weiyang'),
(1729, 185, '宝应', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baoying'),
(1730, 185, '仪征', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yizheng'),
(1731, 185, '高邮', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoyou'),
(1732, 185, '江都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangdu'),
(1733, 186, '崇川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chongchuan'),
(1734, 186, '港闸', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gangzha'),
(1735, 186, '海安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haian'),
(1736, 186, '如东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rudong'),
(1737, 186, '启东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qidong'),
(1738, 186, '如皋', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rugao'),
(1739, 186, '通州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongzhou'),
(1740, 186, '海门', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haimen'),
(1741, 187, '连云', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lianyun'),
(1742, 187, '新浦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinpu'),
(1743, 187, '海州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haizhou'),
(1744, 187, '赣榆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ganyu'),
(1745, 187, '东海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'donghai'),
(1746, 187, '灌云', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guanyun'),
(1747, 187, '灌南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guannan'),
(1748, 188, '清河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinghe'),
(1749, 188, '清浦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingpu'),
(1750, 188, '淮安/楚州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaian_chuzhou'),
(1751, 188, '淮阴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaiyin'),
(1752, 188, '涟水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lianshui'),
(1753, 188, '洪泽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongze'),
(1754, 188, '盱眙', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', ''),
(1755, 188, '金湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinhu'),
(1756, 188, '开发', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifa'),
(1757, 189, '亭湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tinghu'),
(1758, 189, '盐都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yandu'),
(1759, 189, '响水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangshui'),
(1760, 189, '滨海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'binhai'),
(1761, 189, '阜宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'funing'),
(1762, 189, '射阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sheyang'),
(1763, 189, '建湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianhu'),
(1764, 189, '东台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongtai'),
(1765, 189, '大丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dafeng'),
(1766, 190, '园区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuanqu'),
(1767, 190, '虎丘/高新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huqiu_gaoxinqu'),
(1768, 190, '姑苏/沧浪/金阊/平江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gusu_canglang_jin_pingjiang'),
(1769, 190, '吴江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wujiang'),
(1770, 190, '吴中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuzhong'),
(1771, 190, '相城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangcheng'),
(1772, 191, '京口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingkou'),
(1773, 191, '润州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'runzhou'),
(1774, 191, '丹徒', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dantu'),
(1775, 191, '丹阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'danyang'),
(1776, 191, '扬中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangzhong'),
(1777, 191, '句容', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jurong'),
(1778, 192, '宿城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sucheng'),
(1779, 192, '宿豫', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suyu'),
(1780, 192, '沭阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yang'),
(1781, 192, '泗阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yang'),
(1782, 192, '泗洪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hong'),
(1783, 193, '海陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hailing'),
(1784, 193, '高港', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaogang'),
(1785, 193, '兴化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinghua'),
(1786, 193, '靖江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingjiang'),
(1787, 193, '泰兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taixing'),
(1788, 193, '姜堰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiangyan'),
(1789, 194, '东湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'donghu'),
(1790, 194, '西湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xihu'),
(1791, 194, '青云谱', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingyunpu'),
(1792, 194, '湾里', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wanli');
INSERT INTO `qb_fenlei_zone` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `dirname`) VALUES
(1793, 194, '青山湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingshanhu'),
(1794, 194, '新建', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinjian'),
(1795, 194, '南昌县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanchangxian'),
(1796, 194, '进贤', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinxian'),
(1797, 194, '安义', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anyi'),
(1798, 194, '经开区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingkaiqu'),
(1799, 194, '高新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinqu'),
(1800, 194, '红谷滩', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'honggutan'),
(1801, 194, '桑海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sanghai'),
(1802, 194, '长堎', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chang'),
(1803, 195, '昌江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changjiang'),
(1804, 195, '珠山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhushan'),
(1805, 195, '浮梁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuliang'),
(1806, 195, '乐平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'leping'),
(1807, 196, '安源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anyuan'),
(1808, 196, '湘东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiangdong'),
(1809, 196, '莲花', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lianhua'),
(1810, 196, '上栗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangli'),
(1811, 196, '芦溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'luxi'),
(1812, 197, '庐山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lushan'),
(1813, 197, '浔阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yang'),
(1814, 197, '九江县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiujiangxian'),
(1815, 197, '武宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuning'),
(1816, 197, '修水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiushui'),
(1817, 197, '永修', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongxiu'),
(1818, 197, '德安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dean'),
(1819, 197, '星子', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingzi'),
(1820, 197, '都昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'duchang'),
(1821, 197, '湖口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hukou'),
(1822, 197, '彭泽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pengze'),
(1823, 197, '瑞昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ruichang'),
(1824, 197, '共青城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gongqingcheng'),
(1825, 198, '高新开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinkaifaqu'),
(1826, 198, '渝水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yushui'),
(1827, 198, '分宜', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fenyi'),
(1828, 199, '月湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuehu'),
(1829, 199, '余江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yujiang'),
(1830, 199, '贵溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guixi'),
(1831, 200, '开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifaqu'),
(1832, 200, '章江新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangjiangxinqu'),
(1833, 200, '章贡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhanggong'),
(1834, 200, '赣县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ganxian'),
(1835, 200, '信丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinfeng'),
(1836, 200, '大余', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dayu'),
(1837, 200, '上犹', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangyou'),
(1838, 200, '崇义', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chongyi'),
(1839, 200, '安远', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anyuan'),
(1840, 200, '龙南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longnan'),
(1841, 200, '定南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dingnan'),
(1842, 200, '全南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'quannan'),
(1843, 200, '宁都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningdu'),
(1844, 200, '于都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yudu'),
(1845, 200, '兴国', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingguo'),
(1846, 200, '会昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huichang'),
(1847, 200, '寻乌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xunwu'),
(1848, 200, '石城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shicheng'),
(1849, 200, '瑞金', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ruijin'),
(1850, 200, '南康', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nankang'),
(1851, 201, '庐陵新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lulingxinqu'),
(1852, 201, '井冈山开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinggangshankaifaqu'),
(1853, 201, '吉州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jizhou'),
(1854, 201, '青原', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingyuan'),
(1855, 201, '吉安县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianxian'),
(1856, 201, '吉水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jishui'),
(1857, 201, '峡江', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiajiang'),
(1858, 201, '新干', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingan'),
(1859, 201, '永丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongfeng'),
(1860, 201, '泰和', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taihe'),
(1861, 201, '遂川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suichuan'),
(1862, 201, '万安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wanan'),
(1863, 201, '安福', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anfu'),
(1864, 201, '永新', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongxin'),
(1865, 201, '井冈山市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinggangshanshi'),
(1866, 202, '信州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinzhou'),
(1867, 202, '上饶县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangraoxian'),
(1868, 202, '广丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangfeng'),
(1869, 202, '玉山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yushan'),
(1870, 202, '铅山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qianshan'),
(1871, 202, '横峰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hengfeng'),
(1872, 202, '弋阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yang'),
(1873, 202, '余干', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yugan'),
(1874, 202, '鄱阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yang'),
(1875, 202, '万年', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wannian'),
(1876, 202, '婺源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuan'),
(1877, 202, '德兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dexing'),
(1878, 203, '袁州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuanzhou'),
(1879, 203, '奉新', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengxin'),
(1880, 203, '万载', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wanzai'),
(1881, 203, '上高', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shanggao'),
(1882, 203, '宜丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yifeng'),
(1883, 203, '靖安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jingan'),
(1884, 203, '铜鼓', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tonggu'),
(1885, 203, '丰城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengcheng'),
(1886, 203, '樟树', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangshu'),
(1887, 203, '高安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoan'),
(1888, 204, '开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifaqu'),
(1889, 204, '临川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linchuan'),
(1890, 204, '南城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nancheng'),
(1891, 204, '黎川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lichuan'),
(1892, 204, '南丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanfeng'),
(1893, 204, '崇仁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chongren'),
(1894, 204, '乐安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lean'),
(1895, 204, '宜黄', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yihuang'),
(1896, 204, '金溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinxi'),
(1897, 204, '资溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zixi'),
(1898, 204, '东乡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongxiang'),
(1899, 204, '广昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangchang'),
(1900, 205, '沈河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shenhe'),
(1901, 205, '皇姑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huanggu'),
(1902, 205, '和平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'heping'),
(1903, 205, '大东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dadong'),
(1904, 205, '铁西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tiexi'),
(1905, 205, '苏家屯', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sujiatun'),
(1906, 205, '东陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongling'),
(1907, 205, '于洪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuhong'),
(1908, 205, '新民', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinmin'),
(1909, 205, '法库', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'faku'),
(1910, 205, '辽中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liaozhong'),
(1911, 205, '康平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kangping'),
(1912, 205, '沈北新', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shenbeixin'),
(1913, 206, '普湾新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'puwanxinqu'),
(1914, 206, '西岗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xigang'),
(1915, 206, '中山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhongshan'),
(1916, 206, '沙河口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shahekou'),
(1917, 206, '甘井子', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ganjingzi'),
(1918, 206, '旅顺口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lvshunkou'),
(1919, 206, '金州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinzhou'),
(1920, 206, '开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifaqu'),
(1921, 206, '保税区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baoshuiqu'),
(1922, 206, '高新园区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinyuanqu'),
(1923, 206, '瓦房店', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wafangdian'),
(1924, 206, '普兰店', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pulandian'),
(1925, 206, '庄河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhuanghe'),
(1926, 206, '长海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changhai'),
(1927, 206, '长兴岛', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changxingdao'),
(1928, 206, '花园口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huayuankou'),
(1929, 207, '铁东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tiedong'),
(1930, 207, '铁西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tiexi'),
(1931, 207, '立山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lishan'),
(1932, 207, '千山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qianshan'),
(1933, 207, '台安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taian'),
(1934, 207, '岫岩', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yan'),
(1935, 207, '海城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haicheng'),
(1936, 208, '新抚', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinfu'),
(1937, 208, '东洲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongzhou'),
(1938, 208, '望花', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wanghua'),
(1939, 208, '顺城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuncheng'),
(1940, 208, '抚顺', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fushun'),
(1941, 208, '新宾', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinbin'),
(1942, 208, '清原', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingyuan'),
(1943, 209, '平山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingshan'),
(1944, 209, '溪湖', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xihu'),
(1945, 209, '明山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mingshan'),
(1946, 209, '南芬', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanfen'),
(1947, 209, '本溪', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'benxi'),
(1948, 209, '桓仁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huanren'),
(1949, 210, '元宝', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuanbao'),
(1950, 210, '振兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhenxing'),
(1951, 210, '振安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhenan'),
(1952, 210, '宽甸', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kuandian'),
(1953, 210, '东港', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'donggang'),
(1954, 210, '凤城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengcheng'),
(1955, 211, '古塔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guta'),
(1956, 211, '凌河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linghe'),
(1957, 211, '太和', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taihe'),
(1958, 211, '黑山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'heishan'),
(1959, 211, '义县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yixian'),
(1960, 211, '凌海', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linghai'),
(1961, 211, '北镇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beizhen'),
(1962, 212, '站前', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhanqian'),
(1963, 212, '西市', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xishi'),
(1964, 212, '鲅鱼圈', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuquan'),
(1965, 212, '老边', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'laobian'),
(1966, 212, '盖州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaizhou'),
(1967, 212, '大石桥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dashiqiao'),
(1968, 213, '海州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haizhou'),
(1969, 213, '新邱', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinqiu'),
(1970, 213, '太平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taiping'),
(1971, 213, '清河门', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinghemen'),
(1972, 213, '细河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xihe'),
(1973, 213, '阜新', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fuxin'),
(1974, 213, '彰武', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangwu'),
(1975, 214, '白塔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baita'),
(1976, 214, '文圣', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wensheng'),
(1977, 214, '宏伟', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongwei'),
(1978, 214, '弓长岭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gongchangling'),
(1979, 214, '太子河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taizihe'),
(1980, 214, '辽阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liaoyang'),
(1981, 214, '灯塔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dengta'),
(1982, 215, '双台子', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangtaizi'),
(1983, 215, '兴隆台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinglongtai'),
(1984, 215, '大洼', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dawa'),
(1985, 215, '盘山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'panshan'),
(1986, 216, '银州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yinzhou'),
(1987, 216, '清河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qinghe'),
(1988, 216, '铁岭县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tielingxian'),
(1989, 216, '西丰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xifeng'),
(1990, 216, '昌图', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changtu'),
(1991, 216, '调兵山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'diaobingshan'),
(1992, 216, '开原', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaiyuan'),
(1993, 217, '双塔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shuangta'),
(1994, 217, '龙城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longcheng'),
(1995, 217, '朝阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chaoyang'),
(1996, 217, '建平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianping'),
(1997, 217, '喀左', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kazuo'),
(1998, 217, '北票', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'beipiao'),
(1999, 217, '凌源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingyuan'),
(2000, 218, '连山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lianshan'),
(2001, 218, '龙港', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longgang'),
(2002, 218, '南票', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanpiao'),
(2003, 218, '绥中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suizhong'),
(2004, 218, '建昌', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianchang'),
(2005, 218, '兴城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingcheng'),
(2006, 219, '新城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xincheng'),
(2007, 219, '回民', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huimin'),
(2008, 219, '赛罕', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'saihan'),
(2009, 219, '玉泉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuquan'),
(2010, 219, '托县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tuoxian'),
(2011, 219, '土左', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tuzuo'),
(2012, 219, '武川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuchuan'),
(2013, 219, '清水河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingshuihe'),
(2014, 219, '和林', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'helin'),
(2015, 219, '开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifaqu'),
(2016, 220, '昆都仑区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kundulunqu'),
(2017, 220, '东河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'donghe'),
(2018, 220, '青山区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingshanqu'),
(2019, 220, '石拐区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shiguaiqu'),
(2020, 220, '白云矿区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'baiyunkuangqu'),
(2021, 220, '九原区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiuyuanqu'),
(2022, 220, '土默特右旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tumoteyouqi'),
(2023, 220, '固阳县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guyangxian'),
(2024, 220, '达茂旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'damaoqi'),
(2025, 221, '海拉尔', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hailaer'),
(2026, 221, '阿荣旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'arongqi'),
(2027, 221, '莫力达瓦达斡尔族', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'molidawadawoerzu'),
(2028, 221, '鄂伦春', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'elunchun'),
(2029, 221, '鄂温克族', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ewenkezu'),
(2030, 221, '陈巴尔虎旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chenbaerhuqi'),
(2031, 221, '新巴尔虎左旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinbaerhuzuoqi'),
(2032, 221, '新巴尔虎右旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinbaerhuyouqi'),
(2033, 221, '满洲里', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'manzhouli'),
(2034, 221, '牙克石', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yakeshi'),
(2035, 221, '扎兰屯', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhalantun'),
(2036, 221, '额尔古纳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'eerguna'),
(2037, 221, '根河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'genhe'),
(2038, 222, '红山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongshan'),
(2039, 222, '元宝山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuanbaoshan'),
(2040, 222, '松山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'songshan'),
(2041, 222, '阿鲁旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'aluqi'),
(2042, 222, '巴林左旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'balinzuoqi'),
(2043, 222, '巴林右旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'balinyouqi'),
(2044, 222, '林西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linxi'),
(2045, 222, '克什克腾旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'keshiketengqi'),
(2046, 222, '翁牛特旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wengniuteqi'),
(2047, 222, '喀喇沁旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kalaqinqi'),
(2048, 222, '宁城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningcheng'),
(2049, 222, '敖汉旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'aohanqi'),
(2050, 223, '科尔沁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'keerqin'),
(2051, 223, '科尔沁左翼中旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'keerqinzuoyizhongqi'),
(2052, 223, '科尔沁左翼后旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'keerqinzuoyihouqi'),
(2053, 223, '开鲁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kailu'),
(2054, 223, '库伦旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kulunqi'),
(2055, 223, '奈曼旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'naimanqi'),
(2056, 223, '扎鲁特旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhaluteqi'),
(2057, 223, '霍林郭勒', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huolinguole'),
(2058, 224, '东胜', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongsheng'),
(2059, 224, '达拉特旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dalateqi'),
(2060, 224, '准格尔旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhungeerqi'),
(2061, 224, '鄂托克前旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'etuokeqianqi'),
(2062, 224, '鄂托克旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'etuokeqi'),
(2063, 224, '杭锦旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hangjinqi'),
(2064, 224, '乌审旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wushenqi'),
(2065, 224, '伊金霍洛旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yijinhuoluoqi'),
(2066, 225, '海勃湾', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haibowan'),
(2067, 225, '海南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hainan'),
(2068, 225, '乌达', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuda'),
(2069, 226, '临河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linhe'),
(2070, 226, '五原', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wuyuan'),
(2071, 226, '磴口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kou'),
(2072, 226, '乌拉特前旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wulateqianqi'),
(2073, 226, '乌拉特中旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wulatezhongqi'),
(2074, 226, '乌拉特后旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wulatehouqi'),
(2075, 226, '杭锦后旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hangjinhouqi'),
(2076, 227, '集宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jining'),
(2077, 227, '卓资', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhuozi'),
(2078, 227, '化德', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huade'),
(2079, 227, '商都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shangdu'),
(2080, 227, '兴和', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinghe'),
(2081, 227, '凉城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liangcheng'),
(2082, 227, '察哈尔右翼前旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chahaeryouyiqianqi'),
(2083, 227, '察哈尔右翼中旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chahaeryouyizhongqi'),
(2084, 227, '察哈尔右翼后旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chahaeryouyihouqi'),
(2085, 227, '四子王旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'siziwangqi'),
(2086, 227, '丰镇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fengzhen'),
(2087, 228, '乌兰浩特', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wulanhaote'),
(2088, 228, '阿尔山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'aershan'),
(2089, 228, '科尔沁右翼前旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'keerqinyouyiqianqi'),
(2090, 228, '科尔沁右翼中旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'keerqinyouyizhongqi'),
(2091, 228, '扎赉特旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhateqi'),
(2092, 228, '突泉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tuquan'),
(2093, 229, '二连浩特', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'erlianhaote'),
(2094, 229, '锡林浩特', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xilinhaote'),
(2095, 229, '阿巴嘎旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'abagaqi'),
(2096, 229, '苏尼特左旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sunitezuoqi'),
(2097, 229, '苏尼特右旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'suniteyouqi'),
(2098, 229, '东乌珠', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongwuzhu'),
(2099, 229, '西乌珠', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiwuzhu'),
(2100, 229, '太仆寺旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taipusiqi'),
(2101, 229, '镶黄旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xianghuangqi'),
(2102, 229, '正镶白旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhengxiangbaiqi'),
(2103, 229, '正蓝旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhenglanqi'),
(2104, 229, '多伦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'duolun'),
(2105, 230, '阿拉善左旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'alashanzuoqi'),
(2106, 230, '阿拉善右旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'alashanyouqi'),
(2107, 230, '额济纳旗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ejinaqi'),
(2108, 231, '兴庆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xingqing'),
(2109, 231, '西夏', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xixia'),
(2110, 231, '金凤', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinfeng'),
(2111, 231, '永宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yongning'),
(2112, 231, '贺兰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'helan'),
(2113, 231, '灵武', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingwu'),
(2114, 232, '大武口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dawukou'),
(2115, 232, '惠农', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huinong'),
(2116, 232, '平罗', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingluo'),
(2117, 233, '红寺堡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hongsibao'),
(2118, 233, '利通', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'litong'),
(2119, 233, '盐池', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanchi'),
(2120, 233, '同心', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongxin'),
(2121, 233, '青铜峡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingtongxia'),
(2122, 234, '原州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuanzhou'),
(2123, 234, '西吉', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiji'),
(2124, 234, '隆德', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longde'),
(2125, 234, '泾源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuan'),
(2126, 234, '彭阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pengyang'),
(2127, 235, '沙坡头', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shapotou'),
(2128, 235, '中宁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhongning'),
(2129, 235, '海原', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haiyuan'),
(2130, 236, '城东', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengdong'),
(2131, 236, '城中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengzhong'),
(2132, 236, '城西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengxi'),
(2133, 236, '城北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengbei'),
(2134, 236, '大通', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'datong'),
(2135, 236, '湟中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhong'),
(2136, 236, '湟源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yuan'),
(2137, 237, '平安', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingan'),
(2138, 237, '民和', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'minhe'),
(2139, 237, '乐都', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ledu'),
(2140, 237, '互助', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huzhu'),
(2141, 237, '化隆', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hualong'),
(2142, 237, '循化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xunhua'),
(2143, 238, '门源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'menyuan'),
(2144, 238, '祁连', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qilian'),
(2145, 238, '海晏', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hai'),
(2146, 238, '刚察', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gangcha'),
(2147, 239, '同仁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tongren'),
(2148, 239, '尖扎', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jianzha'),
(2149, 239, '泽库', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zeku'),
(2150, 239, '河南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'henan'),
(2151, 240, '玛沁', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'maqin'),
(2152, 240, '班玛', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'banma'),
(2153, 240, '甘德', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gande'),
(2154, 240, '达日', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dari'),
(2155, 240, '久治', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiuzhi'),
(2156, 240, '玛多', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'maduo'),
(2157, 241, '玉树县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yushuxian'),
(2158, 241, '杂多', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zaduo'),
(2159, 241, '称多', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengduo'),
(2160, 241, '治多', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhiduo'),
(2161, 241, '囊谦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nangqian'),
(2162, 241, '曲麻莱', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qumalai'),
(2163, 242, '茫崖行委', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mangyaxingwei'),
(2164, 242, '冷湖行委', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lenghuxingwei'),
(2165, 242, '大柴旦行委', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dachaidanxingwei'),
(2166, 242, '格尔木', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'geermu'),
(2167, 242, '德令哈', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'delingha'),
(2168, 242, '乌兰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wulan'),
(2169, 242, '都兰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dulan'),
(2170, 242, '天峻', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianjun'),
(2171, 243, '高新', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxin'),
(2172, 243, '市中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shizhong'),
(2173, 243, '历下', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lixia'),
(2174, 243, '天桥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianqiao'),
(2175, 243, '槐荫', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huaiyin'),
(2176, 243, '历城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'licheng'),
(2177, 243, '长清', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changqing'),
(2178, 243, '章丘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangqiu'),
(2179, 243, '平阴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingyin'),
(2180, 243, '济阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiyang'),
(2181, 243, '商河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shanghe'),
(2182, 244, '市中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shizhong'),
(2183, 244, '高新区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinqu'),
(2184, 244, '任城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rencheng'),
(2185, 244, '兖州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhou'),
(2186, 244, '曲阜', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qufu'),
(2187, 244, '泗水', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shui'),
(2188, 244, '邹城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zoucheng'),
(2189, 244, '微山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weishan'),
(2190, 244, '鱼台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yutai'),
(2191, 244, '金乡', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinxiang'),
(2192, 244, '嘉祥', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiaxiang'),
(2193, 244, '梁山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'liangshan'),
(2194, 244, '汶上', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shang'),
(2195, 245, '张店', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhangdian'),
(2196, 245, '临淄', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linzi'),
(2197, 245, '淄川', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zichuan'),
(2198, 245, '周村', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhoucun'),
(2199, 245, '博山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'boshan'),
(2200, 245, '桓台', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huantai'),
(2201, 245, '高青', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoqing'),
(2202, 245, '沂源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yiyuan'),
(2203, 246, '市中', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shizhong'),
(2204, 246, '薛城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xuecheng'),
(2205, 246, '峄城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(2206, 246, '台儿庄', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taierzhuang'),
(2207, 246, '山亭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shanting'),
(2208, 246, '滕州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhou'),
(2209, 247, '东营区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongyingqu'),
(2210, 247, '河口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hekou'),
(2211, 247, '垦利', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kenli'),
(2212, 247, '利津', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lijin'),
(2213, 247, '广饶', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangrao'),
(2214, 248, '芝罘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhi'),
(2215, 248, '福山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fushan'),
(2216, 248, '牟平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mouping'),
(2217, 248, '莱山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'laishan'),
(2218, 248, '龙口', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'longkou'),
(2219, 248, '莱阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'laiyang'),
(2220, 248, '莱州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'laizhou'),
(2221, 248, '蓬莱', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'penglai'),
(2222, 248, '招远', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhaoyuan'),
(2223, 248, '栖霞', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qixia'),
(2224, 248, '海阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'haiyang'),
(2225, 248, '长岛', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changdao'),
(2226, 248, '开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifaqu');
INSERT INTO `qb_fenlei_zone` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `dirname`) VALUES
(2227, 249, '综合保税区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zonghebaoshuiqu'),
(2228, 249, '潍城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'weicheng'),
(2229, 249, '寒亭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hanting'),
(2230, 249, '坊子', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'fangzi'),
(2231, 249, '奎文', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kuiwen'),
(2232, 249, '临朐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lin'),
(2233, 249, '昌乐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changle'),
(2234, 249, '青州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingzhou'),
(2235, 249, '诸城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhucheng'),
(2236, 249, '寿光', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shouguang'),
(2237, 249, '安丘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'anqiu'),
(2238, 249, '高密', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaomi'),
(2239, 249, '昌邑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'changyi'),
(2240, 249, '高新开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaoxinkaifaqu'),
(2241, 249, '滨海开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'binhaikaifaqu'),
(2242, 249, '峡山发展区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiashanfazhanqu'),
(2243, 250, '环翠', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huancui'),
(2244, 250, '文登', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wendeng'),
(2245, 250, '荣成', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rongcheng'),
(2246, 250, '乳山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'rushan'),
(2247, 251, '市南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shinan'),
(2248, 251, '市北', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shibei'),
(2249, 251, '四方', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'sifang'),
(2250, 251, '李沧', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'licang'),
(2251, 251, '黄岛', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huangdao'),
(2252, 251, '胶南', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiaonan'),
(2253, 251, '胶州', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiaozhou'),
(2254, 251, '平度', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingdu'),
(2255, 251, '莱西', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'laixi'),
(2256, 251, '即墨', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jimo'),
(2257, 251, '崂山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shan'),
(2258, 251, '城阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengyang'),
(2259, 252, '泰山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'taishan'),
(2260, 252, '岱岳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yue'),
(2261, 252, '宁阳', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningyang'),
(2262, 252, '东平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongping'),
(2263, 252, '新泰', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xintai'),
(2264, 252, '肥城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'feicheng'),
(2265, 253, '东港', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'donggang'),
(2266, 253, '岚山', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'shan'),
(2267, 253, '五莲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wulian'),
(2268, 253, '莒县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(2269, 254, '莱城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'laicheng'),
(2270, 254, '钢城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gangcheng'),
(2271, 256, '德城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'decheng'),
(2272, 256, '乐陵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'leling'),
(2273, 256, '禹城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yucheng'),
(2274, 256, '陵县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingxian'),
(2275, 256, '平原', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingyuan'),
(2276, 256, '夏津', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiajin'),
(2277, 256, '武城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wucheng'),
(2278, 256, '齐河', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qihe'),
(2279, 256, '临邑', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linyi'),
(2280, 256, '宁津', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ningjin'),
(2281, 256, '庆云', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingyun'),
(2282, 257, '东昌府', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongchangfu'),
(2283, 257, '阳谷', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanggu'),
(2284, 257, '莘县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xian'),
(2285, 257, '茌平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'ping'),
(2286, 257, '东阿', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'donga'),
(2287, 257, '冠县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guanxian'),
(2288, 257, '高唐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gaotang'),
(2289, 257, '临清', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'linqing'),
(2290, 258, '滨城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bincheng'),
(2291, 258, '惠民', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'huimin'),
(2292, 258, '阳信', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangxin'),
(2293, 258, '无棣', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'wu'),
(2294, 258, '沾化', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zhanhua'),
(2295, 258, '博兴', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'boxing'),
(2296, 258, '邹平', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zouping'),
(2297, 259, '开发区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kaifaqu'),
(2298, 259, '牡丹', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'mudan'),
(2299, 259, '曹县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'caoxian'),
(2300, 259, '单县', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'danxian'),
(2301, 259, '成武', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengwu'),
(2302, 259, '巨野', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'juye'),
(2303, 259, '郓城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(2304, 259, '鄄城', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'cheng'),
(2305, 259, '定陶', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dingtao'),
(2306, 259, '东明', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'dongming'),
(2307, 260, '杏花岭', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinghualing'),
(2308, 260, '小店', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xiaodian'),
(2309, 260, '迎泽', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yingze'),
(2310, 260, '尖草', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiancao'),
(2311, 260, '坪万', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingwan'),
(2312, 260, '柏林', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'bailin'),
(2313, 260, '晋源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jinyuan'),
(2314, 260, '古交', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'gujiao'),
(2315, 260, '清徐', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'qingxu'),
(2316, 260, '阳曲', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yangqu'),
(2317, 260, '娄烦', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'loufan'),
(2318, 261, '城区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengqu'),
(2319, 261, '矿区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kuangqu'),
(2320, 261, '南郊', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'nanjiao'),
(2321, 261, '新荣', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'xinrong'),
(2322, 261, '阳高', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'yanggao'),
(2323, 261, '天镇', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'tianzhen'),
(2324, 261, '广灵', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'guangling'),
(2325, 261, '灵丘', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'lingqiu'),
(2326, 261, '浑源', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'hunyuan'),
(2327, 261, '左云', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'zuoyun'),
(2328, 261, '大同', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'datong'),
(2329, 262, '城区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'chengqu'),
(2330, 262, '矿区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'kuangqu'),
(2331, 262, '郊区', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'jiaoqu'),
(2332, 262, '平定', 0, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', 'pingding');

-- --------------------------------------------------------

--
-- 表的结构 `qb_group`
--

CREATE TABLE IF NOT EXISTS `qb_group` (
  `gid` smallint(4) NOT NULL auto_increment,
  `gptype` tinyint(1) NOT NULL default '0',
  `grouptitle` varchar(50) NOT NULL default '',
  `levelnum` mediumint(7) NOT NULL default '0',
  `totalspace` int(10) NOT NULL default '0',
  `allowsearch` tinyint(1) NOT NULL default '0',
  `powerdb` text NOT NULL,
  `allowadmin` tinyint(1) NOT NULL default '0',
  `allowadmindb` text,
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `qb_group`
--

INSERT INTO `qb_group` (`gid`, `gptype`, `grouptitle`, `levelnum`, `totalspace`, `allowsearch`, `powerdb`, `allowadmin`, `allowadmindb`) VALUES
(2, 1, '游客组', 0, 0, 0, 'a:54:{s:10:"upfileType";s:0:"";s:13:"upfileMaxSize";s:0:"";s:14:"PassContribute";s:1:"1";s:17:"SearchArticleType";s:1:"1";s:16:"PostArticleYzImg";s:1:"1";s:13:"EditPassPower";s:1:"0";s:12:"SetTileColor";s:1:"0";s:14:"SetSellArticle";s:1:"0";s:17:"SetSpecialArticle";s:1:"0";s:17:"SetArticleKeyword";s:1:"0";s:20:"AddArticleKeywordNum";s:0:"";s:21:"AddArticleCopyfromNum";s:0:"";s:18:"SelectArticleStyle";s:1:"0";s:16:"SelectArticleTpl";s:1:"0";s:13:"SetArticleTpl";s:1:"0";s:18:"SetArticlePosttime";s:1:"0";s:18:"SetArticleViewtime";s:1:"0";s:16:"SetArticleHitNum";s:1:"0";s:18:"SetArticlePassword";s:1:"0";s:19:"SetArticleDownGroup";s:1:"0";s:19:"SetArticleViewGroup";s:1:"0";s:17:"SetArticleJumpurl";s:1:"0";s:19:"SetArticleIframeurl";s:1:"0";s:21:"SetArticleDescription";s:1:"0";s:16:"SetArticleTopCom";s:1:"0";s:13:"SetSmallTitle";s:1:"0";s:19:"CommentArticleYzImg";s:1:"1";s:17:"CollectArticleNum";s:0:"";s:15:"CreatSpecialNum";s:0:"";s:13:"PostNoDelCode";s:1:"0";s:7:"SetVote";s:1:"0";s:11:"SetHtmlName";s:1:"0";s:16:"PassContributeSP";s:1:"0";s:14:"AllowUploadMax";s:1:"0";s:11:"comment_num";s:2:"10";s:10:"comment_yz";s:1:"1";s:11:"comment_img";s:1:"0";s:16:"sell_postauto_yz";s:1:"0";s:15:"buy_postauto_yz";s:1:"0";s:15:"post_pingpai_yz";s:1:"0";s:10:"use2domain";s:1:"0";s:16:"useHomepageStyle";s:1:"0";s:21:"view_buy_view_contact";s:1:"0";s:13:"post_sell_num";s:0:"";s:12:"post_buy_num";s:0:"";s:13:"post_news_num";s:0:"";s:14:"post_photo_num";s:0:"";s:11:"post_hr_num";s:0:"";s:17:"post_zhanghui_num";s:0:"";s:12:"post_ZLG_num";s:0:"";s:16:"post_pingpai_num";s:0:"";s:19:"post_baojiadian_num";s:0:"";s:19:"post_xunjiadian_num";s:0:"";s:24:"post_info_collection_num";s:0:"";}', 0, ''),
(3, 1, '管理员', 0, 0, 0, 'a:26:{s:10:"upfileType";s:0:"";s:13:"upfileMaxSize";s:0:"";s:14:"PassContribute";s:1:"1";s:13:"EditPassPower";s:1:"0";s:14:"AllowUploadMax";s:1:"1";s:11:"comment_num";s:0:"";s:10:"comment_yz";s:1:"1";s:11:"comment_img";s:1:"0";s:16:"sell_postauto_yz";s:1:"0";s:15:"buy_postauto_yz";s:1:"0";s:15:"post_pingpai_yz";s:1:"0";s:10:"use2domain";s:1:"0";s:16:"useHomepageStyle";s:1:"0";s:21:"view_buy_view_contact";s:1:"0";s:13:"post_sell_num";s:0:"";s:12:"post_buy_num";s:0:"";s:13:"post_news_num";s:0:"";s:14:"post_photo_num";s:0:"";s:11:"post_hr_num";s:0:"";s:17:"post_zhanghui_num";s:0:"";s:12:"post_ZLG_num";s:0:"";s:16:"post_pingpai_num";s:0:"";s:19:"post_baojiadian_num";s:0:"";s:19:"post_xunjiadian_num";s:0:"";s:24:"post_info_collection_num";s:0:"";s:18:"allow_get_homepage";s:1:"1";}', 1, 'a:32:{s:13:"center_config";s:1:"1";s:8:"user_reg";s:1:"1";s:9:"blend_set";s:1:"1";s:14:"alonepage_list";s:1:"1";s:9:"mysql_out";s:1:"1";s:10:"mysql_into";s:1:"1";s:9:"mysql_del";s:1:"1";s:9:"mysql_sql";s:1:"1";s:14:"adminmenu_list";s:1:"1";s:15:"membermenu_list";s:1:"1";s:11:"member_list";s:1:"1";s:16:"member_addmember";s:1:"1";s:10:"group_list";s:1:"1";s:16:"group_list_admin";s:1:"1";s:9:"group_add";s:1:"1";s:10:"alipay_set";s:1:"1";s:14:"moneycard_make";s:1:"1";s:12:"propagandize";s:1:"1";s:12:"message_send";s:1:"1";s:9:"mail_send";s:1:"1";s:8:"sms_send";s:1:"1";s:27:"Module_fenlei_center_config";s:1:"1";s:18:"Module_fenlei_city";s:1:"1";s:25:"Module_fenlei_center_html";s:1:"1";s:22:"Module_fenlei_autopass";s:1:"1";s:18:"Module_fenlei_list";s:1:"1";s:18:"Module_fenlei_sort";s:1:"1";s:20:"Module_fenlei_module";s:1:"1";s:24:"Module_fenlei_friendlink";s:1:"1";s:21:"Module_ad_norm_listad";s:1:"1";s:25:"Module_ad_norm_listuserad";s:1:"1";s:6:"mymenu";N;}'),
(8, 0, '普通会员', 0, 50, 0, 'a:62:{s:10:"upfileType";s:0:"";s:13:"upfileMaxSize";s:0:"";s:14:"PassContribute";s:1:"1";s:13:"EditPassPower";s:1:"0";s:17:"SearchArticleType";s:1:"1";s:12:"SetTileColor";s:1:"0";s:14:"SetSellArticle";s:1:"0";s:13:"SetSmallTitle";s:1:"0";s:17:"SetSpecialArticle";s:1:"1";s:17:"SetArticleKeyword";s:1:"1";s:20:"AddArticleKeywordNum";s:1:"0";s:16:"PostArticleYzImg";s:1:"0";s:21:"AddArticleCopyfromNum";s:1:"0";s:16:"SelectArticleTpl";s:1:"0";s:13:"SetArticleTpl";s:1:"0";s:18:"SelectArticleStyle";s:1:"0";s:18:"SetArticlePosttime";s:1:"0";s:18:"SetArticleViewtime";s:1:"0";s:16:"SetArticleHitNum";s:1:"0";s:18:"SetArticlePassword";s:1:"0";s:19:"SetArticleDownGroup";s:1:"0";s:19:"SetArticleViewGroup";s:1:"0";s:17:"SetArticleJumpurl";s:1:"0";s:19:"SetArticleIframeurl";s:1:"0";s:21:"SetArticleDescription";s:1:"0";s:16:"SetArticleTopCom";s:1:"0";s:17:"CollectArticleNum";s:2:"30";s:15:"CreatSpecialNum";s:1:"7";s:19:"CommentArticleYzImg";s:1:"1";s:11:"SetHtmlName";s:1:"0";s:7:"SetVote";s:1:"1";s:16:"PassContributeSP";s:1:"0";s:13:"PostNoDelCode";s:1:"0";s:14:"AllowUploadMax";s:1:"0";s:11:"comment_num";s:0:"";s:10:"comment_yz";s:1:"0";s:11:"comment_img";s:1:"0";s:16:"sell_postauto_yz";s:1:"1";s:15:"buy_postauto_yz";s:1:"1";s:15:"post_pingpai_yz";s:1:"1";s:10:"use2domain";s:1:"0";s:16:"useHomepageStyle";s:1:"0";s:21:"view_buy_view_contact";s:1:"0";s:13:"post_sell_num";s:1:"5";s:12:"post_buy_num";s:1:"5";s:13:"post_news_num";s:1:"5";s:14:"post_photo_num";s:2:"10";s:11:"post_hr_num";s:1:"5";s:17:"post_zhanghui_num";s:1:"5";s:12:"post_ZLG_num";s:1:"0";s:16:"post_pingpai_num";s:1:"5";s:19:"post_baojiadian_num";s:1:"5";s:19:"post_xunjiadian_num";s:1:"5";s:24:"post_info_collection_num";s:2:"30";s:18:"allow_get_homepage";s:1:"1";s:16:"shop_postauto_yz";s:1:"1";s:14:"tg_postauto_yz";s:1:"1";s:14:"post_coupon_yz";s:1:"0";s:13:"post_shop_num";s:1:"5";s:11:"post_tg_num";s:1:"3";s:15:"post_coupon_num";s:1:"3";s:13:"post_gift_num";s:1:"0";}', 0, ''),
(9, 0, 'VIP会员', 10000, 0, 0, 'a:61:{s:17:"SearchArticleType";s:1:"0";s:16:"PostArticleYzImg";s:1:"0";s:14:"PassContribute";s:1:"1";s:13:"EditPassPower";s:1:"0";s:12:"SetTileColor";s:1:"0";s:14:"SetSellArticle";s:1:"0";s:17:"SetSpecialArticle";s:1:"0";s:17:"SetArticleKeyword";s:1:"0";s:20:"AddArticleKeywordNum";s:0:"";s:21:"AddArticleCopyfromNum";s:0:"";s:18:"SelectArticleStyle";s:1:"0";s:16:"SelectArticleTpl";s:1:"0";s:13:"SetArticleTpl";s:1:"0";s:18:"SetArticlePosttime";s:1:"0";s:18:"SetArticleViewtime";s:1:"0";s:16:"SetArticleHitNum";s:1:"0";s:18:"SetArticlePassword";s:1:"0";s:19:"SetArticleDownGroup";s:1:"0";s:19:"SetArticleViewGroup";s:1:"0";s:17:"SetArticleJumpurl";s:1:"0";s:19:"SetArticleIframeurl";s:1:"0";s:21:"SetArticleDescription";s:1:"0";s:16:"SetArticleTopCom";s:1:"0";s:13:"SetSmallTitle";s:1:"0";s:19:"CommentArticleYzImg";s:1:"0";s:17:"CollectArticleNum";s:0:"";s:15:"CreatSpecialNum";s:0:"";s:14:"AllowUploadMax";s:1:"0";s:10:"upfileType";s:0:"";s:13:"upfileMaxSize";s:0:"";s:11:"comment_num";s:2:"30";s:10:"comment_yz";s:1:"0";s:11:"comment_img";s:1:"0";s:16:"sell_postauto_yz";s:1:"1";s:15:"buy_postauto_yz";s:1:"1";s:15:"post_pingpai_yz";s:1:"1";s:10:"use2domain";s:1:"1";s:16:"useHomepageStyle";s:1:"1";s:21:"view_buy_view_contact";s:1:"1";s:9:"topmyinfo";s:0:"";s:12:"topmyinfoday";s:0:"";s:13:"topcompanyday";s:0:"";s:13:"post_sell_num";s:2:"50";s:12:"post_buy_num";s:2:"50";s:13:"post_news_num";s:2:"50";s:14:"post_photo_num";s:3:"100";s:11:"post_hr_num";s:2:"20";s:17:"post_zhanghui_num";s:2:"20";s:12:"post_ZLG_num";s:1:"5";s:19:"post_baojiadian_num";s:2:"50";s:19:"post_xunjiadian_num";s:2:"50";s:16:"post_pingpai_num";s:2:"10";s:24:"post_info_collection_num";s:3:"100";s:18:"allow_get_homepage";s:1:"1";s:16:"shop_postauto_yz";s:1:"1";s:14:"tg_postauto_yz";s:1:"1";s:14:"post_coupon_yz";s:1:"1";s:13:"post_shop_num";s:3:"100";s:11:"post_tg_num";s:2:"50";s:15:"post_coupon_num";s:2:"50";s:13:"post_gift_num";s:1:"0";}', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `qb_hack`
--

CREATE TABLE IF NOT EXISTS `qb_hack` (
  `keywords` varchar(30) NOT NULL default '',
  `name` varchar(30) NOT NULL default '',
  `isclose` tinyint(1) NOT NULL default '0',
  `author` varchar(30) NOT NULL default '',
  `config` text NOT NULL,
  `htmlcode` text NOT NULL,
  `hackfile` text NOT NULL,
  `hacksqltable` text NOT NULL,
  `adminurl` varchar(150) NOT NULL default '',
  `about` text NOT NULL,
  `class1` varchar(30) NOT NULL default '',
  `class2` varchar(30) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `linkname` text NOT NULL,
  `isbiz` tinyint(1) NOT NULL default '0',
  UNIQUE KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `qb_hack`
--

INSERT INTO `qb_hack` (`keywords`, `name`, `isclose`, `author`, `config`, `htmlcode`, `hackfile`, `hacksqltable`, `adminurl`, `about`, `class1`, `class2`, `list`, `linkname`, `isbiz`) VALUES
('login', '用户登录插件', 0, '', 'a:3:{s:10:"systemType";s:6:"php168";s:9:"guestcode";s:0:"";}', '', '', '', 'index.php?lfj=hack&hack=login&job=list', '', '', '', 0, '', 0),
('moneylog', '用户消费积分记录', 0, '', '', '', '', '', 'index.php?lfj=moneylog&job=list', '', 'other', '插件大全', 0, '', 0),
('alipay_set', '在线充值支付管理', 0, '', '', '', '', '', 'index.php?lfj=alipay&job=list', '', 'other', '电子商务管理', 9, '', 0),
('js_list', 'JS内容调用', 0, '', '', '', '', '', 'index.php?lfj=js&job=list', '', 'other', '其它功能', 9, '', 0),
('propagandize', '推广赚取积分功能', 0, '', '', '', '', '', 'index.php?lfj=propagandize&job=list', '', 'other', '其它功能', 8, '', 0),
('jfadmin_mod', '积分介绍管理', 0, '', '', '', '', '', 'index.php?lfj=jfadmin&job=listjf', '', 'other', '其它功能', 7, '', 0),
('attachment_list', '附件管理', 0, '', '', '', '', '', 'index.php?lfj=attachment&job=list', '', 'other', '其它功能', 6, '', 0),
('area_list', '地区管理', 0, '', '', '', '', '', 'index.php?lfj=area&job=list', '', 'other', '其它功能', 5, '', 0),
('upgrade_ol', '系统在线升级', 0, '', '', '', '', '', 'index.php?lfj=upgrade&job=get', '', 'other', '其它功能', 4, '', 0),
('mail_send', '邮件群发', 0, '', '', '', '', '', 'index.php?lfj=mail&job=send', '', 'other', '消息/邮件群发', 2, '', 0),
('message_send', '站内消息群发', 0, '', '', '', '', '', 'index.php?lfj=message&job=send', '', 'other', '消息/邮件群发', 3, '', 0),
('sms_send', '手机短信群发', 0, '', '', '', '', '', 'index.php?lfj=sms&job=send', '', 'other', '消息/邮件群发', 1, '', 0),
('cnzz_set', 'CNZZ流量统计', 0, '', '', '', '', '', 'index.php?lfj=cnzz&job=ask', '', 'other', '站外功能', 3, '', 0),
('moneycard_make', '点卡充值管理', 0, '', '', '', '', '', 'index.php?lfj=moneycard&job=make', '', 'other', '电子商务管理', 7, '', 1),
('logs_login_logs', '后台登录日志', 0, '', '', '', '', '', 'index.php?lfj=logs&job=login_logs', '', 'other', '日志管理', 2, '', 0),
('logs_admin_do_logs', '后台操作日志', 0, '', '', '', '', '', 'index.php?lfj=logs&job=admin_logs', '', 'other', '日志管理', 1, '', 0),
('crontab', '定时任务', 0, '', '', '', '', '', 'index.php?lfj=crontab&job=list', '', 'other', '插件大全', 0, '', 0),
('sgt_grule', 'SGT采集规则管理', 0, '', '', '', '', '', 'index.php?lfj=SuperGatherTool&job=list', '', 'other', '蓝锂超级采集工具', 100, '', 0),
('sgt_gsort', 'SGT采集规则分类管理', 0, '', '', '', '', '', 'index.php?lfj=SuperGatherTool&job=listsort', '', 'other', '蓝锂超级采集工具', 99, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_jfabout`
--

CREATE TABLE IF NOT EXISTS `qb_jfabout` (
  `id` mediumint(7) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `content` text NOT NULL,
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `qb_jfabout`
--

INSERT INTO `qb_jfabout` (`id`, `fid`, `title`, `content`, `list`) VALUES
(6, 2, '发表文章可得{$webdb[postArticleMoney]}个积分', '只有审核后的文章才可得积分,没审核的文章不得积分.', 0),
(7, 2, '删除文章扣除{$webdb[deleteArticleMoney]}个积分', '', 0),
(5, 1, '用户注册可得{$webdb[regmoney]}个积分', '', 0),
(8, 2, '文章被设置为精华可得{$webdb[comArticleMoney]}个积分', '', 0),
(9, 1, '每个点卡可兑换{$webdb[MoneyRatio]}个积分,点卡可以通过在线充值获得.', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_jfsort`
--

CREATE TABLE IF NOT EXISTS `qb_jfsort` (
  `fid` mediumint(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `qb_jfsort`
--

INSERT INTO `qb_jfsort` (`fid`, `name`, `list`) VALUES
(1, '会员中心', 0),
(2, '文章中心', 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_label`
--

CREATE TABLE IF NOT EXISTS `qb_label` (
  `lid` int(10) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `ch` smallint(4) NOT NULL default '0',
  `chtype` tinyint(2) NOT NULL default '0',
  `tag` varchar(50) NOT NULL default '',
  `type` varchar(30) NOT NULL default '',
  `typesystem` tinyint(1) NOT NULL default '0',
  `code` text NOT NULL,
  `divcode` text,
  `hide` tinyint(1) NOT NULL default '0',
  `js_time` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `pagetype` tinyint(3) NOT NULL default '0',
  `module` mediumint(6) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `if_js` tinyint(1) NOT NULL default '0',
  `style` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`lid`),
  KEY `ch` (`ch`,`pagetype`,`module`,`fid`,`chtype`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=680 ;

--
-- 转存表中的数据 `qb_label`
--

INSERT INTO `qb_label` (`lid`, `name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES
(1, '', 0, 99, 'searchhotword', 'code', 0, '<A href="#">求购三房一顶</A> <A href="#">出售毛坯房</A>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 1, 0, 0, 'blue'),
(2, '', 0, 0, 'abc_ads2', 'Info_fenlei_', 1, 'a:30:{s:13:"tplpart_1code";s:112:"<div style="line-height:180%;">·<A HREF="$url" target=''_blank''  style="$fontcolor;$fontweight">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:6:"fenlei";s:6:"wninfo";s:7:"fenlei_";s:7:"typefid";N;s:6:"cityId";s:17:"$GLOBALS[city_id]";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:24:"/common_title/0title.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";s:0:"";s:5:"stype";s:1:"t";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:4:"list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:132:"(SELECT * FROM qb_fenlei_content  WHERE city_id=''$GLOBALS[city_id]''  AND city_id=''$GLOBALS[city_id]'' ) ORDER BY list DESC LIMIT 0,5 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"20";s:10:"titleflood";s:1:"0";s:9:"start_num";s:1:"1";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1306894949, 0, 1, 0, 0, 'blue'),
(3, '', 0, 0, 'azure_mainbanner', 'pic', 0, 'a:4:{s:6:"imgurl";s:23:"../images/azure/ad1.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"990";s:6:"height";s:2:"60";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 1, 0, 0, 'azure'),
(20, '', 0, 0, 'green_companyt', 'Info_hy_', 1, 'a:29:{s:13:"tplpart_1code";s:229:"<dl>\r\n<dt><a  href="$webdb[www_url]/home/?uid=$uid" target="_blank"><img src="$picurl" height="75"/></a></dt>\r\n<dd>\r\n<div><a  href="$webdb[www_url]/home/?uid=$uid" target="_blank">$title</a></div>\r\n<p>$content</p>\r\n</dd>\r\n</dl>\r\n";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"company";s:7:"typefid";N;s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:2:"cp";s:2:"yz";s:3:"all";s:8:"renzheng";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:10:"levelstime";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:99:"SELECT * FROM qb_hy_company  WHERE city_id=''$GLOBALS[city_id]''  ORDER BY levelstime DESC LIMIT 0,6 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"40";s:10:"titleflood";s:1:"0";s:9:"start_num";s:1:"1";}', 'a:3:{s:5:"div_w";s:3:"775";s:5:"div_h";s:3:"234";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1322103539, 0, 1, 0, 0, 'green_tpl'),
(21, '', 0, 0, 'green_slide', 'rollpic', 0, 'a:7:{s:13:"tplpart_1code";s:280:"<TABLE id="pictable" style="DISPLAY: none">\r\n <TBODY>\r\n<!--\r\nEOT;\r\nforeach($listdb AS $key=>$rs){@extract($rs);\r\nprint <<<EOT\r\n-->\r\n   <tr>\r\n    <td><img src="$picurl"/></td>\r\n    <td> $title</td>\r\n    <td>$url</td>\r\n   </tr>\r\n<!--\r\nEOT;\r\n}\r\nprint <<<EOT\r\n-->\r\n </TBODY>\r\n</TABLE>";s:8:"rolltype";s:1:"2";s:5:"width";s:0:"";s:6:"height";s:0:"";s:6:"picurl";a:3:{i:1;s:21:"../images/green/1.gif";i:2;s:21:"../images/green/2.jpg";i:3;s:21:"../images/green/3.jpg";}s:7:"piclink";a:3:{i:1;s:21:"http://www.php168.com";i:2;s:23:"http://www.qibosoft.com";i:3;s:23:"http://bbs.qibosoft.com";}s:6:"picalt";a:3:{i:1;s:14:"php168官方网站";i:2;s:16:"齐博软件官方网站";i:3;s:16:"齐博技术交流中心";}}', 'a:3:{s:5:"div_w";s:3:"499";s:5:"div_h";s:3:"282";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1322103496, 0, 1, 0, 0, 'green_tpl'),
(22, '', 0, 0, 'green_listad1', 'pic', 0, 'a:4:{s:6:"imgurl";s:23:"../images/green/ad1.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"165";s:6:"height";s:2:"85";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 1, 0, 0, 'green_tpl'),
(23, '', 0, 0, 'green_listad3', 'pic', 0, 'a:4:{s:6:"imgurl";s:23:"../images/green/ad1.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"165";s:6:"height";s:2:"82";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1322104345, 0, 1, 0, 0, 'green_tpl'),
(24, '', 0, 0, 'green_listad2', 'pic', 0, 'a:4:{s:6:"imgurl";s:23:"../images/green/ad2.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"165";s:6:"height";s:2:"85";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 1, 0, 0, 'green_tpl'),
(25, '', 0, 0, 'green_listad4', 'pic', 0, 'a:4:{s:6:"imgurl";s:23:"../images/green/ad3.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"815";s:6:"height";s:2:"60";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 1, 0, 0, 'green_tpl'),
(26, '', 0, 0, 'green_listad7', 'pic', 0, 'a:4:{s:6:"imgurl";s:27:"../images/green/dbanner.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"990";s:6:"height";s:2:"60";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 1, 0, 0, 'green_tpl'),
(27, '', 0, 0, 'green_listad5', 'pic', 0, 'a:4:{s:6:"imgurl";s:23:"../images/green/ad4.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"265";s:6:"height";s:2:"60";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 1, 0, 0, 'green_tpl'),
(28, '', 0, 0, 'green_listad6', 'pic', 0, 'a:4:{s:6:"imgurl";s:23:"../images/green/ad5.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"265";s:6:"height";s:2:"60";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 1, 0, 0, 'green_tpl'),
(29, '', 0, 0, 'green_listad8', 'pic', 0, 'a:4:{s:6:"imgurl";s:23:"../images/green/ad6.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"265";s:6:"height";s:2:"60";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 1, 0, 0, 'green_tpl'),
(30, '', 0, 0, 'green_listwad1', 'code', 0, '<div class="list"><a href="#">文字链接广告</a></div>\r\n<div class="list"><a href="#">文字链接广告</a></div>\r\n<div class="list"><a href="#">文字链接广告</a></div>\r\n<div class="list"><a href="#">文字链接广告</a></div>\r\n<div class="list"><a href="#">文字链接广告</a></div>\r\n', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 1, 0, 0, 'green_tpl'),
(31, '', 0, 0, 'green_listwad2', 'code', 0, '<div class="list"><a href="http://app.baidu.com/riliwannianli/index.html" target="_blank">万年历</a></div>\r\n<div class="list"><a href="http://bus.mapbar.com" target="_blank">公交查询</a></div>\r\n<div class="list"><a href="http://huoche.kuxun.cn/index.html" target="_blank">火车查询</a></div>\r\n<div class="list"><a href="http://www.ip138.com/ips.asp" target="_blank">IP查询</a></div>\r\n<div class="list"><a href="http://www.360.cn/" target="_blank">在线杀毒</a></div>\r\n<div class="list"><a href="http://www.ip138.com/post/" target="_blank">邮编区号</a></div>\r\n<div class="list"><a href="http://tvguide.ent.sina.com.cn/" target="_blank">电视预告</a></div>\r\n<div class="list"><a href="http://banlv.baidu.com/" target="_blank">百度伴侣</a></div>\r\n<div class="list"><a href="http://quote.eastmoney.com/zs000001.html" target="_blank">股票查询</a></div>\r\n<div class="list"><a href="http://www.icbc.com.cn/icbc/" target="_blank">工商银行</a></div>\r\n<div class="list"><a href="http://caipiao.hao123.com/" target="_blank">彩票查询</a></div>\r\n<div class="list"><a href="http://weather.news.sina.com.cn/" target="_blank">天气预报</a></div>\r\n<div class="list"><a href="http://www.ctrip.com/" target="_blank">飞机航班</a></div>\r\n<div class="list"><a href="http://astro.lady.qq.com/" target="_blank">星座运程</a></div>\r\n<div class="list"><a href="http://www.hao123.com/bankjt.htm" target="_blank">网上支付</a></div>\r\n<div class="list"><a href="http://movie.hao123.com" target="_blank">免费电影</a></div>\r\n<div class="list"><a href="http://www.ip138.com/ems/" target="_blank">快递查询</a></div>\r\n<div class="list"><a href="http://qq.ip138.com/train/" target="_blank">列车时刻表</a></div>\r\n<div class="list"><a href="http://www.ip138.com/sj/" target="_blank">手机查询</a></div>\r\n<div class="list"><a href="http://qq.ip138.com/tran.htm" target="_blank">在线翻译</a></div>\r\n<div class="list"><a href="http://qq.ip138.com/hl.asp" target="_blank">货币汇率</a></div>\r\n<div class="list"><a href="http://jbk.39.net/" target="_blank">疾病查询</a></div>\r\n<div class="list"><a href="http://fund.eastmoney.com/fund.html" target="_blank">基金净值</a></div>\r\n<div class="list"><a href="http://zhougongjiemeng.1518.com/" target="_blank">周公解梦</a></div>\r\n', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 1, 0, 0, 'green_tpl'),
(32, '', 0, 0, 'green_allsortad1', 'pic', 0, 'a:4:{s:6:"imgurl";s:27:"../images/green/dbanner.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"990";s:6:"height";s:2:"60";}', 'a:3:{s:5:"div_w";s:3:"989";s:5:"div_h";s:2:"56";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1322185801, 5, 1, 5, 0, 'green_tpl'),
(33, '', 0, 99, 'green_hotline', 'code', 0, '热线电话：15442556542', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1322619231, 0, 1, 0, 0, 'green_tpl'),
(421, '', 0, 0, 'w8_ad', 'pic', 0, 'a:5:{s:6:"imgurl";s:35:"../zhidao/images/default/banner.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"980";s:6:"height";s:2:"70";s:11:"pic_city_id";i:0;}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 42, 0, 0, 'fresh_mb');

-- --------------------------------------------------------

--
-- 表的结构 `qb_memberdata`
--

CREATE TABLE IF NOT EXISTS `qb_memberdata` (
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(50) NOT NULL default '',
  `qq_api` varchar(32) NOT NULL default '',
  `question` varchar(32) NOT NULL default '',
  `groupid` smallint(4) NOT NULL default '0',
  `grouptype` tinyint(1) NOT NULL default '0',
  `groups` varchar(255) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '0',
  `newpm` tinyint(1) NOT NULL default '0',
  `medals` varchar(255) NOT NULL default '',
  `money` mediumint(7) unsigned NOT NULL default '0',
  `totalspace` bigint(13) NOT NULL default '0',
  `usespace` bigint(13) NOT NULL default '0',
  `oltime` int(10) NOT NULL default '0',
  `lastvist` int(10) NOT NULL default '0',
  `lastip` varchar(15) NOT NULL default '',
  `regdate` int(10) NOT NULL default '0',
  `regip` varchar(15) NOT NULL default '',
  `sex` tinyint(1) NOT NULL default '0',
  `bday` date NOT NULL default '0000-00-00',
  `icon` varchar(150) NOT NULL default '',
  `introduce` text NOT NULL,
  `hits` int(7) NOT NULL default '0',
  `lastview` int(10) NOT NULL default '0',
  `oicq` varchar(11) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `homepage` varchar(150) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `provinceid` mediumint(6) NOT NULL default '0',
  `cityid` mediumint(7) NOT NULL default '0',
  `address` varchar(255) NOT NULL default '',
  `postalcode` varchar(6) NOT NULL default '',
  `mobphone` varchar(12) NOT NULL default '',
  `telephone` varchar(25) NOT NULL default '',
  `idcard` varchar(20) NOT NULL default '',
  `truename` varchar(20) NOT NULL default '',
  `config` text NOT NULL,
  `moneycard` mediumint(7) unsigned NOT NULL default '0',
  `email_yz` tinyint(1) NOT NULL default '0',
  `mob_yz` tinyint(1) NOT NULL default '0',
  `idcard_yz` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`),
  KEY `groups` (`groups`),
  KEY `sex` (`sex`,`bday`,`cityid`),
  KEY `qq_api` (`qq_api`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `qb_memberdata`
--

INSERT INTO `qb_memberdata` (`uid`, `username`, `qq_api`, `question`, `groupid`, `grouptype`, `groups`, `yz`, `newpm`, `medals`, `money`, `totalspace`, `usespace`, `oltime`, `lastvist`, `lastip`, `regdate`, `regip`, `sex`, `bday`, `icon`, `introduce`, `hits`, `lastview`, `oicq`, `msn`, `homepage`, `email`, `provinceid`, `cityid`, `address`, `postalcode`, `mobphone`, `telephone`, `idcard`, `truename`, `config`, `moneycard`, `email_yz`, `mob_yz`, `idcard_yz`) VALUES
(1, 'admin', 'BA598D96B196817A143DE2D8FAF06644', '', 3, 1, '', 1, 0, '', 5000, 1048576000, 121876969, 4387233, 1413943276, '24.79.117.141', 1253678332, '127.0.0.1', 0, '0000-00-00', 'http://www.yibang.ca/upload_files/icon/1.gif', '', 96, 1408670761, '', '', '', 'wanxdn@gmail.com', 0, 0, '', '', '', '', '', '', 'a:1:{s:7:"endtime";s:0:"";}', 5, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `qb_members`
--

CREATE TABLE IF NOT EXISTS `qb_members` (
  `uid` mediumint(7) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `qb_members`
--

INSERT INTO `qb_members` (`uid`, `username`, `password`) VALUES
(1, 'admin', 'aed275490ed88023e9fa127b2dbcbf16');

-- --------------------------------------------------------

--
-- 表的结构 `qb_menu`
--

CREATE TABLE IF NOT EXISTS `qb_menu` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `name` varchar(80) NOT NULL default '',
  `linkurl` varchar(150) NOT NULL default '',
  `color` varchar(15) NOT NULL default '',
  `target` tinyint(1) NOT NULL default '0',
  `moduleid` tinyint(2) NOT NULL default '0',
  `type` tinyint(2) NOT NULL default '0',
  `hide` tinyint(1) NOT NULL default '0',
  `list` smallint(4) NOT NULL default '0',
  `extend` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_module`
--

CREATE TABLE IF NOT EXISTS `qb_module` (
  `id` mediumint(5) NOT NULL auto_increment,
  `type` tinyint(1) NOT NULL default '0',
  `name` varchar(30) NOT NULL default '',
  `pre` varchar(20) NOT NULL default '',
  `dirname` varchar(30) NOT NULL default '',
  `domain` varchar(100) NOT NULL default '',
  `admindir` varchar(20) NOT NULL default '',
  `config` text NOT NULL,
  `list` mediumint(5) NOT NULL default '0',
  `admingroup` varchar(150) NOT NULL default '',
  `adminmember` text NOT NULL,
  `ifclose` tinyint(1) NOT NULL default '0',
  `ifsys` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `qb_module`
--

INSERT INTO `qb_module` (`id`, `type`, `name`, `pre`, `dirname`, `domain`, `admindir`, `config`, `list`, `admingroup`, `adminmember`, `ifclose`, `ifsys`) VALUES
(2, 2, '广告系统', 'ad_', 'a_d', '', '', '', 0, '', '', 0, 1),
(1, 2, '分类信息', 'fenlei_', 'f', '', '', 'a:7:{s:12:"list_PhpName";s:18:"list.php?&fid=$fid";s:12:"show_PhpName";s:29:"bencandy.php?&fid=$fid&id=$id";s:8:"MakeHtml";N;s:14:"list_HtmlName1";N;s:14:"show_HtmlName1";N;s:14:"list_HtmlName2";N;s:14:"show_HtmlName2";N;}', 80, '', '', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `qb_moneycard`
--

CREATE TABLE IF NOT EXISTS `qb_moneycard` (
  `id` mediumint(7) NOT NULL auto_increment,
  `passwd` varchar(32) NOT NULL default '',
  `moneyrmb` int(7) NOT NULL default '0',
  `moneycard` int(7) NOT NULL default '0',
  `ifsell` tinyint(1) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(32) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `qb_moneycard`
--

INSERT INTO `qb_moneycard` (`id`, `passwd`, `moneyrmb`, `moneycard`, `ifsell`, `uid`, `username`, `posttime`) VALUES
(1, '48716104471', 100, 1, 1, 1, 'admin', 1375320436);

-- --------------------------------------------------------

--
-- 表的结构 `qb_moneylog`
--

CREATE TABLE IF NOT EXISTS `qb_moneylog` (
  `id` mediumint(7) NOT NULL auto_increment,
  `uid` mediumint(7) NOT NULL default '0',
  `money` mediumint(7) NOT NULL default '0',
  `about` varchar(255) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=960 ;

--
-- 转存表中的数据 `qb_moneylog`
--

INSERT INTO `qb_moneylog` (`id`, `uid`, `money`, `about`, `posttime`) VALUES
(855, 1, 2, '', 1377968242),
(856, 1, 2, '', 1377968242),
(857, 1, 2, '', 1377968243),
(858, 1, 2, '', 1377968243),
(859, 1, 2, '', 1377968243),
(860, 1, 2, '', 1377968244),
(861, 1, 2, '', 1377968244),
(862, 1, 2, '', 1377968244),
(863, 1, 2, '', 1377968245),
(864, 1, 2, '', 1377968246),
(865, 1, 2, '', 1377968246),
(866, 1, 2, '', 1377968246),
(867, 1, 2, '', 1377968247),
(868, 1, 2, '', 1377968247),
(869, 1, 2, '', 1377968247),
(870, 1, 2, '', 1377968247),
(871, 1, 2, '', 1377968248),
(872, 1, 2, '', 1377968249),
(873, 1, 2, '', 1377968249),
(874, 1, 2, '', 1377968249),
(875, 1, 2, '', 1377968250),
(876, 1, 2, '', 1377968251),
(877, 1, 2, '', 1377968252),
(878, 1, 2, '', 1377968252),
(879, 1, 2, '', 1377968253),
(880, 1, 2, '', 1377968253),
(881, 1, 2, '', 1377968253),
(882, 1, 2, '', 1377968254),
(883, 1, 2, '', 1377968254),
(884, 1, 2, '', 1377968255),
(885, 1, 2, '', 1377968257),
(886, 1, 2, '', 1377968258),
(887, 1, 2, '', 1377968258),
(888, 1, 2, '', 1377968259),
(889, 1, 2, '', 1377968259),
(890, 1, 2, '', 1377968259),
(891, 1, 2, '', 1377968260),
(892, 1, 2, '', 1377968260),
(893, 1, 2, '', 1377968261),
(894, 1, 2, '', 1377968260),
(895, 1, 2, '', 1377968261),
(896, 1, 2, '', 1377968262),
(897, 1, 2, '', 1377968262),
(898, 1, 2, '', 1377968262),
(899, 1, 2, '', 1377968263),
(900, 1, 2, '', 1377968263),
(901, 1, 2, '', 1377968263),
(902, 1, 2, '', 1377968263),
(903, 1, 2, '', 1377968264),
(904, 1, 2, '', 1377968265),
(905, 1, 2, '', 1377968265),
(906, 1, 2, '', 1377968265),
(907, 1, 2, '', 1377968266),
(908, 1, 2, '', 1377968267),
(909, 1, 2, '', 1377968267),
(910, 1, 2, '', 1377968267),
(911, 1, 2, '', 1377968268),
(912, 1, 2, '', 1377968268),
(913, 1, 2, '', 1377968269),
(914, 1, 2, '', 1377968269),
(915, 1, 2, '', 1377968270),
(916, 1, 2, '', 1377968270),
(917, 1, 2, '', 1377968271),
(918, 1, 2, '', 1377968271),
(919, 1, 2, '', 1377968272),
(920, 7, 5, '注册得分', 1398239678),
(921, 1, 2, '', 1398499769),
(922, 1, 2, '', 1398499902),
(923, 1, -2, '', 1398500007),
(924, 1, -2, '', 1398500010),
(925, 1, 2, '', 1398500033),
(926, 1, 2, '', 1398500064),
(927, 1, 2, '', 1398501320),
(928, 1, 2, '', 1398501359),
(929, 1, 2, '', 1398501424),
(930, 1, 2, '', 1398501461),
(931, 1, 2, '', 1398501529),
(932, 1, 2, '', 1398589172),
(933, 1, 2, '', 1401114424),
(934, 7, 45, '管理员操作', 1404267615),
(935, 7, 2, '', 1404267707),
(936, 1, -30, '', 1404267768),
(937, 8, 5, '注册得分', 1408416019),
(938, 9, 5, '注册得分', 1408416144),
(939, 9, 10, '', 1408416302),
(940, 9, 10, '', 1408416380),
(941, 1, 10, '', 1408416612),
(942, 1, 10, '', 1408417484),
(943, 9, 10, '', 1408418369),
(944, 9, 10, '', 1408419381),
(945, 1, 10, '', 1408421820),
(946, 1, 10, '', 1408422413),
(947, 1, 10, '', 1408427601),
(948, 10, 5, '注册得分', 1408496252),
(949, 1, 10, '', 1408518055),
(950, 1, 10, '', 1408519204),
(951, 1, 10, '', 1408519770),
(952, 1, 10, '', 1408551523),
(953, 1, 10, '', 1408555286),
(954, 11, 5, '注册得分', 1408640694),
(955, 12, 5, '注册得分', 1408669719),
(956, 13, 5, '注册得分', 1408847746),
(957, 1, 2763, '管理员操作', 1408850611),
(958, 14, 5, '注册得分', 1408975769),
(959, 14, 10, '', 1408975791);

-- --------------------------------------------------------

--
-- 表的结构 `qb_olpay`
--

CREATE TABLE IF NOT EXISTS `qb_olpay` (
  `id` mediumint(7) NOT NULL auto_increment,
  `orderid` int(10) NOT NULL default '0',
  `numcode` varchar(32) NOT NULL default '',
  `money` varchar(15) NOT NULL default '0',
  `ifpay` tinyint(1) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(32) NOT NULL default '',
  `paytype` tinyint(3) NOT NULL default '0',
  `moduleid` mediumint(5) NOT NULL default '0',
  `formid` mediumint(5) NOT NULL default '0',
  `banktype` varchar(15) NOT NULL default '',
  `articleid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `numcode` (`numcode`),
  KEY `paytype` (`paytype`),
  KEY `formid` (`formid`),
  KEY `articleid` (`articleid`),
  KEY `moduleid` (`moduleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_pm`
--

CREATE TABLE IF NOT EXISTS `qb_pm` (
  `mid` int(10) unsigned NOT NULL auto_increment,
  `touid` mediumint(8) unsigned NOT NULL default '0',
  `togroups` varchar(80) NOT NULL default '',
  `fromuid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `type` enum('rebox','sebox','public') NOT NULL default 'rebox',
  `ifnew` tinyint(1) NOT NULL default '0',
  `title` varchar(130) NOT NULL default '',
  `mdate` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  PRIMARY KEY  (`mid`),
  KEY `touid` (`touid`),
  KEY `fromuid` (`fromuid`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `qb_pm`
--

INSERT INTO `qb_pm` (`mid`, `touid`, `togroups`, `fromuid`, `username`, `type`, `ifnew`, `title`, `mdate`, `content`) VALUES
(2, 1, '', 0, '系统消息', 'rebox', 0, '欢迎您使用本系统！', 1375403247, '欢迎您使用本系统！'),
(3, 2, '', 0, '系统消息', 'rebox', 1, '欢迎您使用本系统！', 1375403247, '欢迎您使用本系统！'),
(4, 3, '', 0, '系统消息', 'rebox', 1, '欢迎您使用本系统！', 1375403247, '欢迎您使用本系统！'),
(5, 4, '', 0, '系统消息', 'rebox', 1, '欢迎您使用本系统！', 1375403247, '欢迎您使用本系统！');

-- --------------------------------------------------------

--
-- 表的结构 `qb_propagandize`
--

CREATE TABLE IF NOT EXISTS `qb_propagandize` (
  `id` int(10) NOT NULL auto_increment,
  `uid` mediumint(7) NOT NULL default '0',
  `ip` bigint(11) NOT NULL default '0',
  `day` smallint(3) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `fromurl` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `day` (`day`,`uid`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_regnum`
--

CREATE TABLE IF NOT EXISTS `qb_regnum` (
  `sid` varchar(8) NOT NULL default '',
  `num` varchar(6) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`num`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `qb_sgt_grule`
--

CREATE TABLE IF NOT EXISTS `qb_sgt_grule` (
  `id` mediumint(7) NOT NULL auto_increment,
  `fid` mediumint(7) NOT NULL default '0',
  `type` varchar(15) NOT NULL default '0',
  `fixsystem` varchar(30) NOT NULL default '',
  `filetype` varchar(50) NOT NULL default '',
  `webname` varchar(150) NOT NULL default '',
  `listurl` varchar(150) NOT NULL default '',
  `firstpage` varchar(150) NOT NULL default '',
  `page_begin` int(10) NOT NULL default '0',
  `page_end` int(10) NOT NULL default '0',
  `page_step` int(10) NOT NULL default '0',
  `title_minleng` smallint(5) NOT NULL default '0',
  `listmoreurl` text NOT NULL,
  `link_include_word` text NOT NULL,
  `link_noinclude_word` text NOT NULL,
  `link_replace_word` text NOT NULL,
  `title_replace_word` text NOT NULL,
  `list_begin_code` text NOT NULL,
  `list_end_code` text NOT NULL,
  `list_begin_preg` text NOT NULL,
  `list_end_preg` text NOT NULL,
  `gatherthesame` tinyint(1) NOT NULL default '0',
  `show_begin_preg` text NOT NULL,
  `show_end_preg` text NOT NULL,
  `show_endfile_preg` text NOT NULL,
  `show_begin_code` text NOT NULL,
  `show_end_code` text NOT NULL,
  `show_replace_word` text NOT NULL,
  `show_morepage` varchar(100) NOT NULL default '',
  `show_firstpage` varchar(100) NOT NULL default '',
  `show_spe2page` tinyint(1) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `copypic` tinyint(1) NOT NULL default '0',
  `sort` smallint(4) NOT NULL default '0',
  `file_type` varchar(50) NOT NULL default '',
  `file_minleng` mediumint(6) NOT NULL default '0',
  `file_minsize` int(9) NOT NULL default '0',
  `file_includeword` text NOT NULL,
  `file_noincludeword` text NOT NULL,
  `file_explode` text NOT NULL,
  `file_picwidth` int(8) NOT NULL default '0',
  `file_star_string` varchar(150) NOT NULL default '',
  `title_rule` text NOT NULL,
  `content_rule` text NOT NULL,
  `save_rule` text,
  `title_morepage_rull` text NOT NULL,
  `content_morepage_rull` text NOT NULL,
  `charset_type` tinyint(1) NOT NULL default '0',
  `lastgathertime` int(10) default '0',
  `lastgatherstatus` tinyint(2) default '0',
  `lastgathernum` int(8) default '0',
  `ifauto` tinyint(2) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_sgt_gsort`
--

CREATE TABLE IF NOT EXISTS `qb_sgt_gsort` (
  `fid` mediumint(6) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `fup` mediumint(6) NOT NULL default '0',
  `class` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `list` mediumint(5) NOT NULL default '0',
  `allowpost` varchar(255) NOT NULL default '',
  `sons` smallint(4) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qb_template`
--

CREATE TABLE IF NOT EXISTS `qb_template` (
  `id` mediumint(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `type` smallint(4) NOT NULL default '0',
  `filepath` varchar(100) NOT NULL default '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `qb_template`
--

INSERT INTO `qb_template` (`id`, `name`, `type`, `filepath`, `descrip`, `list`) VALUES
(5, '头部白板', 7, 'template/default/none.htm', '', 0),
(6, '底部白板', 8, 'template/default/none.htm', '', 0),
(23, '文章列表页(左宽右窄)', 2, 'template/default/list.htm', '', 0),
(22, '内容页(左宽右窄)', 3, 'template/default/bencandy.htm', '', 0),
(24, '主页(左宽右窄)', 1, 'template/default/index.htm', '', 0),
(20, '内容页(上下型)', 3, 'template/default/bencandy_tpl_2.htm', '', 0),
(21, '独立页', 9, 'template/default/alonepage.htm', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `qb_upfile`
--

CREATE TABLE IF NOT EXISTS `qb_upfile` (
  `up_id` mediumint(7) NOT NULL auto_increment,
  `module_id` smallint(4) NOT NULL default '0',
  `ids` varchar(255) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `url` varchar(150) NOT NULL default '',
  `filename` varchar(100) NOT NULL default '',
  `num` smallint(5) NOT NULL default '0',
  `if_tmp` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`up_id`),
  KEY `filename` (`filename`),
  KEY `if_tmp` (`if_tmp`),
  KEY `posttime` (`posttime`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=227 ;

--
-- 转存表中的数据 `qb_upfile`
--

INSERT INTO `qb_upfile` (`up_id`, `module_id`, `ids`, `fid`, `uid`, `posttime`, `url`, `filename`, `num`, `if_tmp`) VALUES
(1, 0, '0', 0, 1, 1290486784, 'label', 'tmp-1_20101123121104_vcrd7.jpg', 1, 1),
(2, 0, '0', 0, 1, 1290486789, 'label', 'tmp-1_20101123121109_ud6ep.jpg', 1, 1),
(3, 0, '0', 0, 1, 1290487135, 'label', 'tmp-1_20101123121155_ihnbv.jpg', 1, 1),
(4, 0, '0', 0, 1, 1290487151, 'label', 'tmp-1_20101123121111_d03vt.jpg', 1, 1),
(5, 0, '0', 0, 1, 1290488480, 'label', 'tmp-1_20101123131120_6g6lw.gif', 1, 1),
(6, 0, '0', 0, 1, 1290488773, 'label', 'tmp-1_20101123131113_owuft.gif', 1, 1),
(7, 0, '0', 0, 1, 1290488817, 'label', 'tmp-1_20101123131157_sdv3g.png', 1, 1),
(8, 0, '0', 0, 1, 1313639238, 'homepage/pic/1/1', 'tmp-1_20110818110818_uddtk.jpg', 1, 1),
(9, 0, '0', 0, 1, 1313639251, 'homepage/pic/1/1', 'tmp-1_20110818110831_yklqa.jpg', 1, 1),
(10, 0, '0', 0, 1, 1313640789, 'homepage/pic/1/1', 'tmp-1_20110818120809_yblun.jpg', 1, 1),
(11, 0, '0', 0, 1, 1313640790, 'homepage/pic/1/1', 'tmp-1_20110818120810_1mn98.jpg', 1, 1),
(12, 0, '0', 0, 1, 1369801478, 'qb_fenlei_/43', 'tmp-1_20130529120538_w7hwc.jpg', 1, 1),
(13, 0, '0', 0, 1, 1369801547, 'qb_fenlei_/43', 'tmp-1_20130529120547_ub1tb.jpg', 1, 1),
(14, 0, '0', 0, 1, 1369801571, 'qb_fenlei_/43', 'tmp-1_20130529120511_cl1dv.jpg', 1, 1),
(15, 0, '0', 0, 1, 1369842822, 'qb_fenlei_/43', 'tmp-1_20130529230543_fz6k6.gif', 1, 1),
(16, 0, '0', 0, 1, 1369842944, 'qb_fenlei_/43', 'tmp-1_20130529230544_hp1wi.gif', 1, 1),
(17, 0, '0', 0, 1, 1370592180, 'qb_fenlei_/43', 'tmp-1_20130607160600_prqvn.jpg', 1, 1),
(18, 0, '0', 0, 1, 1370592180, 'qb_fenlei_/43', 'tmp-1_20130607160600_s4kp1.jpg', 1, 1),
(19, 0, '0', 0, 1, 1370592180, 'qb_fenlei_/43', 'tmp-1_20130607160600_a3igk.jpg', 1, 1),
(20, 0, '0', 0, 1, 1370592205, 'qb_fenlei_/43', 'tmp-1_20130607160625_sjm1a.jpg', 1, 1),
(21, 0, '0', 0, 1, 1370596127, 'qb_fenlei_/43', 'tmp-1_20130607170647_oolwz.jpg', 1, 1),
(22, 0, '0', 0, 1, 1370596127, 'qb_fenlei_/43', 'tmp-1_20130607170648_hqhfb.jpg', 1, 1),
(23, 0, '0', 0, 1, 1370597753, 'qb_fenlei_/43', 'tmp-1_20130607170653_iodcx.jpg', 1, 1),
(24, 0, '0', 0, 1, 1370597798, 'qb_fenlei_/43', 'tmp-1_20130607170638_bgeg7.jpg', 1, 1),
(25, 0, '0', 0, 1, 1370597830, 'qb_fenlei_/43', 'tmp-1_20130607170610_wf5qb.jpg', 1, 1),
(26, 0, '0', 0, 1, 1370597957, 'qb_fenlei_/43', 'tmp-1_20130607170617_uqtfb.jpg', 1, 1),
(27, 0, '0', 0, 1, 1370609193, 'qb_fenlei_/43', 'tmp-1_20130607200634_evfww.jpg', 1, 1),
(28, 0, '0', 0, 1, 1370609554, 'qb_fenlei_/43', 'tmp-1_20130607200634_oofn9.jpg', 1, 1),
(29, 0, '0', 0, 1, 1373732355, 'icon', 'tmp-1_20130714000715_n8fro.jpg', 1, 1),
(30, 0, '0', 0, 1, 1373739651, 'other', 'tmp-1_20130714020751_ZGF0YQ==.sql', 1, 1),
(31, 0, '0', 0, 1, 1374072681, 'company/renzheng', 'tmp-1_20130717220721_goyte.jpg', 1, 1),
(32, 0, '0', 0, 1, 1374117081, 'qb_fenlei_/43', 'tmp-1_20130718110721_mggiz.jpg', 1, 1),
(33, 0, '0', 0, 1, 1374117176, 'qb_fenlei_/43', 'tmp-1_20130718110756_5zkgl.jpg', 1, 1),
(34, 0, '0', 0, 1, 1374117351, 'qb_fenlei_/43', 'tmp-1_20130718110751_0j2lq.jpg', 1, 1),
(35, 0, '0', 0, 0, 1374118146, 'qb_fenlei_/43', 'tmp-_20130718110706_0z6sr.jpg', 1, 1),
(36, 0, '0', 0, 0, 1374118146, 'qb_fenlei_/43', 'tmp-_20130718110707_jdfgn.jpg', 1, 1),
(37, 0, '0', 0, 1, 1374119595, 'icon', 'tmp-1_20130718110715_ec2nk.jpg', 1, 1),
(38, 0, '0', 0, 1, 1374119888, 'qb_fenlei_/43', 'tmp-1_20130718110708_xwtfh.jpg', 1, 1),
(39, 0, '0', 0, 1, 1374119988, 'qb_fenlei_/43', 'tmp-1_20130718110748_ab26z.jpg', 1, 1),
(40, 0, '0', 0, 1, 1375409253, 'icon', 'tmp-1_20130802100833_u2bed.jpg', 1, 1),
(41, 0, '0', 0, 1, 1375433567, 'icon', 'tmp-1_20130802160847_b1nhf.jpg', 1, 1),
(42, 0, '0', 0, 1, 1375531012, 'qb_fenlei_/43', 'tmp-1_20130803190852_areln.jpg', 1, 1),
(43, 0, '0', 0, 1, 1375531147, 'qb_fenlei_/43', 'tmp-1_20130803190807_kcgss.jpg', 1, 1),
(44, 0, '0', 0, 1, 1375531147, 'qb_fenlei_/43', 'tmp-1_20130803190807_bqet1.jpg', 1, 1),
(45, 0, '0', 0, 1, 1375531147, 'qb_fenlei_/43', 'tmp-1_20130803190807_uf4o1.jpg', 1, 1),
(46, 0, '0', 0, 1, 1375531313, 'qb_fenlei_/43', 'tmp-1_20130803200853_cjjoe.jpg', 1, 1),
(47, 0, '0', 0, 1, 1375531313, 'qb_fenlei_/43', 'tmp-1_20130803200853_bidd4.jpg', 1, 1),
(48, 0, '0', 0, 1, 1375531313, 'qb_fenlei_/43', 'tmp-1_20130803200853_w5sz7.jpg', 1, 1),
(49, 0, '0', 0, 1, 1375532007, 'qb_fenlei_/43', 'tmp-1_20130803200827_4ixhz.jpg', 1, 1),
(50, 0, '0', 0, 1, 1375532007, 'qb_fenlei_/43', 'tmp-1_20130803200827_xtjgg.jpg', 1, 1),
(51, 0, '0', 0, 1, 1375533002, 'other', 'tmp-1_20130803200802_nr5nu.jpg', 1, 1),
(52, 0, '0', 0, 1, 1375533002, 'other', 'tmp-1_20130803200802_coczi.jpg', 1, 1),
(53, 0, '0', 0, 1, 1375533002, 'other', 'tmp-1_20130803200802_4rl3v.jpg', 1, 1),
(54, 0, '0', 0, 1, 1375533400, 'other', 'tmp-1_20130803200840_ctupz.jpg', 1, 1),
(55, 0, '0', 0, 1, 1375533400, 'other', 'tmp-1_20130803200840_t1hic.jpg', 1, 1),
(56, 0, '0', 0, 1, 1375533400, 'other', 'tmp-1_20130803200840_fvzg6.jpg', 1, 1),
(57, 0, '0', 0, 1, 1375534369, 'other', 'tmp-1_20130803200849_9i6ez.jpg', 1, 1),
(58, 0, '0', 0, 1, 1375534369, 'other', 'tmp-1_20130803200849_w1mxr.jpg', 1, 1),
(59, 0, '0', 0, 1, 1375534369, 'other', 'tmp-1_20130803200849_dsmby.jpg', 1, 1),
(60, 0, '0', 0, 1, 1375534510, 'qb_fenlei_/43', 'tmp-1_20130803200810_zuiau.gif', 1, 1),
(61, 0, '0', 0, 1, 1375534887, 'qb_fenlei_/189', 'tmp-1_20130803210827_ybazy.gif', 1, 1),
(62, 0, '0', 0, 1, 1375535566, 'qb_fenlei_/43', 'tmp-1_20130803210846_rjxpk.jpg', 1, 1),
(63, 0, '0', 0, 1, 1375535638, 'qb_fenlei_/43', 'tmp-1_20130803210858_zhfk6.gif', 1, 1),
(64, 0, '0', 0, 1, 1375535767, 'qb_fenlei_/43', 'tmp-1_20130803210807_meei5.gif', 1, 1),
(65, 0, '0', 0, 1, 1375535803, 'qb_fenlei_/43', 'tmp-1_20130803210843_6lz3k.jpg', 1, 1),
(66, 0, '0', 0, 1, 1375536097, 'qb_fenlei_/43', 'tmp-1_20130803210837_xj6b8.gif', 1, 1),
(67, 0, '0', 0, 1, 1375536288, 'qb_fenlei_/43', 'tmp-1_20130803210848_2wf3h.gif', 1, 1),
(68, 0, '0', 0, 1, 1375536288, 'qb_fenlei_/43', 'tmp-1_20130803210848_9y8r6.jpg', 1, 1),
(69, 0, '0', 0, 1, 1375536288, 'qb_fenlei_/43', 'tmp-1_20130803210848_hoa5h.jpg', 1, 1),
(70, 0, '0', 0, 1, 1375536439, 'qb_fenlei_/43', 'tmp-1_20130803210819_pansx.gif', 1, 1),
(71, 0, '0', 0, 1, 1375536439, 'qb_fenlei_/43', 'tmp-1_20130803210819_2ey6m.jpg', 1, 1),
(72, 0, '0', 0, 1, 1375536439, 'qb_fenlei_/43', 'tmp-1_20130803210819_gvit2.jpg', 1, 1),
(73, 0, '0', 0, 1, 1375537236, 'qb_fenlei_/43', 'tmp-1_20130803210836_t2mad.jpg', 1, 1),
(74, 0, '0', 0, 1, 1375537414, 'qb_fenlei_/43', 'tmp-1_20130803210834_mpgn1.jpg', 1, 1),
(75, 0, '0', 0, 1, 1375537429, 'qb_fenlei_/43', 'tmp-1_20130803210849_rwq2g.jpg', 1, 1),
(76, 0, '0', 0, 1, 1375581446, 'qb_fenlei_/42', 'tmp-1_20130804090826_b9sze.jpg', 1, 1),
(77, 0, '0', 0, 1, 1375581604, 'qb_fenlei_/42', 'tmp-1_20130804100804_ginva.jpg', 1, 1),
(78, 0, '0', 0, 1, 1375583315, 'qb_fenlei_/40', 'tmp-1_20130804100835_exd08.jpg', 1, 1),
(79, 0, '0', 0, 1, 1375584398, 'qb_fenlei_/38', 'tmp-1_20130804100838_1co4s.jpg', 1, 1),
(80, 0, '0', 0, 1, 1375584700, 'qb_fenlei_/38', 'tmp-1_20130804100840_k8eiq.jpg', 1, 1),
(81, 0, '0', 0, 1, 1375584726, 'qb_fenlei_/38', 'tmp-1_20130804100806_a2onq.jpg', 1, 1),
(82, 0, '0', 0, 1, 1375585082, 'qb_fenlei_/37', 'tmp-1_20130804100802_qblih.jpg', 1, 1),
(83, 0, '0', 0, 1, 1375585130, 'qb_fenlei_/37', 'tmp-1_20130804100850_caefu.jpg', 1, 1),
(84, 0, '0', 0, 1, 1375585244, 'qb_fenlei_/37', 'tmp-1_20130804110844_q7fcp.jpg', 1, 1),
(85, 0, '0', 0, 1, 1375586225, 'qb_fenlei_/36', 'tmp-1_20130804110805_jjudw.jpg', 1, 1),
(86, 0, '0', 0, 1, 1375596977, 'qb_fenlei_/33', 'tmp-1_20130804140817_wuwwq.jpg', 1, 1),
(87, 0, '0', 0, 1, 1375597373, 'qb_fenlei_/32', 'tmp-1_20130804140853_rhzyy.jpg', 1, 1),
(88, 0, '0', 0, 1, 1375598404, 'qb_fenlei_/43', 'tmp-1_20130804140804_xwryh.jpg', 1, 1),
(89, 0, '0', 0, 1, 1375598750, 'qb_fenlei_/31', 'tmp-1_20130804140850_au7su.jpg', 1, 1),
(90, 0, '0', 0, 1, 1375599113, 'qb_fenlei_/30', 'tmp-1_20130804140853_kilvi.jpg', 1, 1),
(91, 0, '0', 0, 1, 1375599865, 'qb_fenlei_/29', 'tmp-1_20130804150825_aa6iu.jpg', 1, 1),
(92, 0, '0', 0, 1, 1375602135, 'qb_fenlei_/28', 'tmp-1_20130804150815_c0lfv.jpg', 1, 1),
(93, 0, '0', 0, 1, 1375602387, 'qb_fenlei_/27', 'tmp-1_20130804150828_ysu9q.jpg', 1, 1),
(94, 0, '0', 0, 1, 1375602608, 'qb_fenlei_/26', 'tmp-1_20130804150808_vs7qs.jpg', 1, 1),
(95, 0, '0', 0, 1, 1375603877, 'qb_fenlei_/43', 'tmp-1_20130804160817_3ies3.jpg', 1, 1),
(96, 0, '0', 0, 1, 1375604416, 'qb_fenlei_/25', 'tmp-1_20130804160816_su9id.jpg', 1, 1),
(97, 0, '0', 0, 1, 1375604815, 'qb_fenlei_/24', 'tmp-1_20130804160855_jhlf5.jpg', 1, 1),
(98, 0, '0', 0, 1, 1375605170, 'qb_fenlei_/23', 'tmp-1_20130804160850_cqvfo.jpg', 1, 1),
(99, 0, '0', 0, 1, 1375605418, 'qb_fenlei_/21', 'tmp-1_20130804160858_uyygm.jpg', 1, 1),
(100, 0, '0', 0, 1, 1375606504, 'qb_fenlei_/173', 'tmp-1_20130804160804_uaasu.jpg', 1, 1),
(101, 0, '0', 0, 1, 1375607649, 'qb_fenlei_/174', 'tmp-1_20130804170809_yicta.jpg', 1, 1),
(102, 0, '0', 0, 1, 1375608024, 'qb_fenlei_/175', 'tmp-1_20130804170824_yjiee.jpg', 1, 1),
(103, 0, '0', 0, 1, 1375608382, 'qb_fenlei_/177', 'tmp-1_20130804170822_x6mf0.jpg', 1, 1),
(104, 0, '0', 0, 1, 1375619078, 'qb_fenlei_/178', 'tmp-1_20130804200839_zmw4h.jpg', 1, 1),
(105, 0, '0', 0, 1, 1375628094, 'qb_fenlei_/176', 'tmp-1_20130804220854_chomx.jpg', 1, 1),
(106, 0, '0', 0, 1, 1375628245, 'qb_fenlei_/179', 'tmp-1_20130804220825_5esck.jpg', 1, 1),
(107, 0, '0', 0, 1, 1375628959, 'qb_fenlei_/189', 'tmp-1_20130804230819_3wsk8.jpg', 1, 1),
(108, 0, '0', 0, 1, 1375629409, 'qb_fenlei_/190', 'tmp-1_20130804230849_wxklc.jpg', 1, 1),
(109, 0, '0', 0, 1, 1375629578, 'qb_fenlei_/191', 'tmp-1_20130804230838_vwcg7.jpg', 1, 1),
(110, 0, '0', 0, 1, 1375630078, 'qb_fenlei_/192', 'tmp-1_20130804230858_quyxy.jpg', 1, 1),
(111, 0, '0', 0, 1, 1375630554, 'qb_fenlei_/193', 'tmp-1_20130804230854_3j9mr.jpg', 1, 1),
(112, 0, '0', 0, 1, 1375630789, 'qb_fenlei_/194', 'tmp-1_20130804230849_1axux.jpg', 1, 1),
(113, 0, '0', 0, 1, 1375630999, 'qb_fenlei_/195', 'tmp-1_20130804230819_cxjsy.jpg', 1, 1),
(114, 0, '0', 0, 1, 1375631305, 'qb_fenlei_/196', 'tmp-1_20130804230825_jrjvb.jpg', 1, 1),
(115, 0, '0', 0, 1, 1375632430, 'qb_fenlei_/200', 'tmp-1_20130805000810_rbztx.jpg', 1, 1),
(116, 0, '0', 0, 1, 1375666591, 'qb_fenlei_/205', 'tmp-1_20130805090831_5x2ki.jpg', 1, 1),
(117, 0, '0', 0, 1, 1375666844, 'qb_fenlei_/206', 'tmp-1_20130805090844_jnnxo.jpg', 1, 1),
(118, 0, '0', 0, 1, 1375667106, 'qb_fenlei_/207', 'tmp-1_20130805090806_t1jam.jpg', 1, 1),
(119, 0, '0', 0, 1, 1375668279, 'qb_fenlei_/208', 'tmp-1_20130805100839_iesbc.jpg', 1, 1),
(120, 0, '0', 0, 1, 1375668655, 'qb_fenlei_/210', 'tmp-1_20130805100856_vizey.jpg', 1, 1),
(121, 0, '0', 0, 1, 1375669147, 'qb_fenlei_/211', 'tmp-1_20130805100807_wf6t3.jpg', 1, 1),
(122, 0, '0', 0, 1, 1375670416, 'qb_fenlei_/212', 'tmp-1_20130805100816_lbznn.jpg', 1, 1),
(123, 0, '0', 0, 1, 1375670983, 'qb_fenlei_/213', 'tmp-1_20130805100843_o2e2t.jpg', 1, 1),
(124, 0, '0', 0, 1, 1375671355, 'qb_fenlei_/214', 'tmp-1_20130805100855_gmclz.jpg', 1, 1),
(125, 0, '0', 0, 1, 1375671355, 'qb_fenlei_/214', 'tmp-1_20130805100855_w6wfp.jpg', 1, 1),
(126, 0, '0', 0, 1, 1375671728, 'qb_fenlei_/215', 'tmp-1_20130805110808_jjurp.jpg', 1, 1),
(127, 0, '0', 0, 1, 1375672579, 'qb_fenlei_/216', 'tmp-1_20130805110819_l9wtw.jpg', 1, 1),
(128, 0, '0', 0, 1, 1375675459, 'qb_fenlei_/252', 'tmp-1_20130805120819_ga3re.jpg', 1, 1),
(129, 0, '0', 0, 1, 1375680728, 'qb_fenlei_/243', 'tmp-1_20130805130808_vlrp9.jpg', 1, 1),
(130, 0, '0', 0, 1, 1375682307, 'qb_fenlei_/329', 'tmp-1_20130805130827_my2ha.jpg', 1, 1),
(131, 0, '0', 0, 1, 1375682784, 'qb_fenlei_/327', 'tmp-1_20130805140824_9dyao.jpg', 1, 1),
(132, 0, '0', 0, 1, 1375683197, 'qb_fenlei_/325', 'tmp-1_20130805140817_sq4me.gif', 1, 1),
(133, 0, '0', 0, 1, 1375683467, 'qb_fenlei_/324', 'tmp-1_20130805140847_z2kus.jpg', 1, 1),
(134, 0, '0', 0, 1, 1375683676, 'qb_fenlei_/323', 'tmp-1_20130805140816_any5j.jpg', 1, 1),
(135, 0, '0', 0, 1, 1375683973, 'qb_fenlei_/322', 'tmp-1_20130805140814_ts0fb.jpg', 1, 1),
(136, 0, '0', 0, 1, 1375684169, 'qb_fenlei_/321', 'tmp-1_20130805140829_ielyj.jpg', 1, 1),
(137, 0, '0', 0, 1, 1375684792, 'qb_fenlei_/319', 'tmp-1_20130805140853_nthg0.jpg', 1, 1),
(138, 0, '0', 0, 1, 1375685373, 'qb_fenlei_/317', 'tmp-1_20130805140833_cpsm1.jpg', 1, 1),
(139, 0, '0', 0, 1, 1375685568, 'qb_fenlei_/316', 'tmp-1_20130805140848_traqi.jpg', 1, 1),
(140, 0, '0', 0, 1, 1375685753, 'qb_fenlei_/315', 'tmp-1_20130805140854_z0wil.jpg', 1, 1),
(141, 0, '0', 0, 1, 1375685953, 'qb_fenlei_/314', 'tmp-1_20130805140813_wmenp.jpg', 1, 1),
(142, 0, '0', 0, 1, 1375686678, 'qb_fenlei_/310', 'tmp-1_20130805150818_rsmx9.jpg', 1, 1),
(143, 0, '0', 0, 1, 1375686999, 'qb_fenlei_/309', 'tmp-1_20130805150839_efqnd.jpg', 1, 1),
(144, 0, '0', 0, 1, 1375688959, 'qb_fenlei_/308', 'tmp-1_20130805150819_knv8g.jpg', 1, 1),
(145, 0, '0', 0, 1, 1375689171, 'qb_fenlei_/307', 'tmp-1_20130805150851_twfcm.jpg', 1, 1),
(146, 0, '0', 0, 1, 1375689436, 'qb_fenlei_/306', 'tmp-1_20130805150816_yozhw.jpg', 1, 1),
(147, 0, '0', 0, 1, 1375690156, 'qb_fenlei_/302', 'tmp-1_20130805160816_hfjpi.jpg', 1, 1),
(148, 0, '0', 0, 1, 1375690656, 'qb_fenlei_/300', 'tmp-1_20130805160836_39zqw.jpg', 1, 1),
(149, 0, '0', 0, 1, 1375691044, 'qb_fenlei_/299', 'tmp-1_20130805160804_0pspq.jpg', 1, 1),
(150, 0, '0', 0, 1, 1375691232, 'qb_fenlei_/298', 'tmp-1_20130805160812_tf7av.jpg', 1, 1),
(151, 0, '0', 0, 1, 1375691502, 'qb_fenlei_/297', 'tmp-1_20130805160842_erq04.jpg', 1, 1),
(152, 0, '0', 0, 1, 1375691829, 'qb_fenlei_/296', 'tmp-1_20130805160809_kvzhn.jpg', 1, 1),
(153, 0, '0', 0, 1, 1375692263, 'qb_fenlei_/332', 'tmp-1_20130805160823_dfpeq.jpg', 1, 1),
(154, 0, '0', 0, 1, 1375692510, 'qb_fenlei_/333', 'tmp-1_20130805160830_oyn74.jpg', 1, 1),
(155, 0, '0', 0, 1, 1375692775, 'qb_fenlei_/334', 'tmp-1_20130805160855_dou8w.jpg', 1, 1),
(156, 0, '0', 0, 1, 1375693606, 'qb_fenlei_/339', 'tmp-1_20130805170846_jldvw.jpg', 1, 1),
(157, 0, '0', 0, 1, 1375694700, 'qb_fenlei_/274', 'tmp-1_20130805170800_nzhiw.jpg', 1, 1),
(158, 0, '0', 0, 1, 1375705608, 'qb_fenlei_/273', 'tmp-1_20130805200848_ecvfx.jpg', 1, 1),
(159, 0, '0', 0, 1, 1375711045, 'qb_fenlei_/286', 'tmp-1_20130805210825_y1mxx.jpg', 1, 1),
(160, 0, '0', 0, 1, 1375711430, 'qb_fenlei_/287', 'tmp-1_20130805220850_nqqxh.jpg', 1, 1),
(161, 0, '0', 0, 1, 1375711651, 'qb_fenlei_/288', 'tmp-1_20130805220831_j8mtl.jpg', 1, 1),
(162, 0, '0', 0, 1, 1375711778, 'qb_fenlei_/289', 'tmp-1_20130805220838_xldw2.jpg', 1, 1),
(163, 0, '0', 0, 1, 1375712122, 'qb_fenlei_/291', 'tmp-1_20130805220822_x2mat.jpg', 1, 1),
(164, 0, '0', 0, 1, 1375868872, 'qb_fenlei_/287', 'tmp-1_20130807170852_drtdk.gif', 1, 1),
(165, 0, '0', 0, 1, 1375868872, 'qb_fenlei_/287', 'tmp-1_20130807170852_buahc.jpg', 1, 1),
(166, 0, '0', 0, 1, 1375868872, 'qb_fenlei_/287', 'tmp-1_20130807170852_clgd1.jpg', 1, 1),
(167, 0, '0', 0, 1, 1375868872, 'qb_fenlei_/287', 'tmp-1_20130807170852_7bgxl.jpg', 1, 1),
(168, 0, '0', 0, 1, 1375868872, 'qb_fenlei_/287', 'tmp-1_20130807170852_2thqt.jpg', 1, 1),
(169, 0, '0', 0, 1, 1376238824, 'icon', 'tmp-1_20130812000844_cy7my.gif', 1, 1),
(170, 0, '0', 0, 1, 1377881416, 'ad', 'tmp-1_20130831000816_9mhgu.gif', 1, 1),
(171, 0, '0', 0, 1, 1378215906, 'ad', 'tmp-1_20130903210906_gyiyv.jpg', 1, 1),
(172, 0, '0', 0, 1, 1378215972, 'ad', 'tmp-1_20130903210912_ipfvg.gif', 1, 1),
(173, 0, '0', 0, 1, 1398237360, 'ad', 'tmp-1_20140423150400_mbpbk.png', 1, 1),
(174, 0, '0', 0, 1, 1398237506, 'ad', 'tmp-1_20140423150426_xkour.png', 1, 1),
(175, 0, '0', 0, 1, 1398270668, 'ad', 'tmp-1_20140424000408_hca4q.png', 1, 1),
(176, 0, '0', 0, 1, 1398270988, 'ad', 'tmp-1_20140424000428_b5itb.png', 1, 1),
(177, 0, '0', 0, 1, 1398415761, 'ad', 'tmp-1_20140425160421_ozc1r.png', 1, 1),
(178, 0, '0', 0, 1, 1398415960, 'ad', 'tmp-1_20140425160440_xta25.png', 1, 1),
(179, 0, '0', 0, 1, 1398499769, 'fenlei/43', 'tmp-1_20140426160429_xnssu.jpg', 1, 1),
(180, 0, '0', 0, 1, 1398499902, 'fenlei/43', 'tmp-1_20140426160442_6g9sd.jpg', 1, 1),
(181, 0, '0', 0, 1, 1398499902, 'fenlei/43', 'tmp-1_20140426160442_qeymj.jpg', 1, 1),
(182, 0, '0', 0, 1, 1398500033, 'fenlei/43', 'tmp-1_20140426160453_wtqdr.jpg', 1, 1),
(183, 0, '0', 0, 1, 1398500064, 'fenlei/43', 'tmp-1_20140426160424_3nfoj.jpg', 1, 1),
(184, 0, '0', 0, 1, 1398500064, 'fenlei/43', 'tmp-1_20140426160424_8gd6d.jpg', 1, 1),
(185, 0, '0', 0, 1, 1398501320, 'fenlei/43', 'tmp-1_20140426160420_5l6tu.jpg', 1, 1),
(186, 0, '0', 0, 1, 1398501359, 'fenlei/43', 'tmp-1_20140426160459_vjgrp.jpg', 1, 1),
(187, 0, '0', 0, 1, 1398501424, 'fenlei/43', 'tmp-1_20140426160404_t8jps.jpg', 1, 1),
(188, 0, '0', 0, 1, 1398501461, 'fenlei/43', 'tmp-1_20140426160441_4u74d.jpg', 1, 1),
(189, 0, '0', 0, 1, 1398501529, 'fenlei/43', 'tmp-1_20140426160449_otv5g.jpg', 1, 1),
(190, 0, '0', 0, 1, 1398589172, 'fenlei/43', 'tmp-1_20140427160432_ytstk.jpg', 1, 1),
(191, 0, '0', 0, 1, 1399193387, 'ad', 'tmp-1_20140504160547_ocr0a.gif', 1, 1),
(192, 0, '0', 0, 1, 1401114424, 'fenlei/43', 'tmp-1_20140526220504_4eulf.gif', 1, 1),
(193, 0, '0', 0, 1, 1403144114, 'ad', 'tmp-1_20140619100614_zybf8.jpg', 1, 1),
(194, 0, '0', 0, 1, 1408297673, 'friendlink', 'tmp-1_20140818010853_qr3ji.png', 1, 1),
(195, 0, '0', 0, 1, 1408297750, 'friendlink', 'tmp-1_20140818010810_thp5w.png', 1, 1),
(196, 0, '0', 0, 1, 1408297780, 'friendlink', 'tmp-1_20140818010840_osrsd.png', 1, 1),
(197, 0, '0', 0, 1, 1408297859, 'ad', 'tmp-1_20140818010859_uy9bc.png', 1, 1),
(198, 0, '0', 0, 9, 1408416302, 'qb_fenlei_/43', 'tmp-9_20140819100802_o4d5y.jpg', 1, 1),
(199, 0, '0', 0, 9, 1408416380, 'qb_fenlei_/43', 'tmp-9_20140819100820_rhzku.jpg', 1, 1),
(200, 0, '0', 0, 9, 1408416380, 'qb_fenlei_/43', 'tmp-9_20140819100824_l0ezv.jpg', 1, 1),
(201, 0, '0', 0, 1, 1408416612, 'qb_fenlei_/43', 'tmp-1_20140819100812_2qewb.jpg', 1, 1),
(202, 0, '0', 0, 1, 1408416612, 'qb_fenlei_/43', 'tmp-1_20140819100813_wdhil.jpg', 1, 1),
(203, 0, '0', 0, 1, 1408417484, 'qb_fenlei_/43', 'tmp-1_20140819110844_uotm0.jpg', 1, 1),
(204, 0, '0', 0, 9, 1408418369, 'qb_fenlei_/43', 'tmp-9_20140819110830_2jjtr.jpg', 1, 1),
(205, 0, '0', 0, 9, 1408419381, 'qb_fenlei_/43', 'tmp-9_20140819110821_wz4ya.jpg', 1, 1),
(206, 0, '0', 0, 9, 1408419381, 'qb_fenlei_/43', 'tmp-9_20140819110823_nuuxp.jpg', 1, 1),
(207, 0, '0', 0, 1, 1408421820, 'qb_fenlei_/43', 'tmp-1_20140819120800_ar8vy.jpg', 1, 1),
(208, 0, '0', 0, 1, 1408421859, 'qb_fenlei_/43', 'tmp-1_20140819120839_whv5j.jpg', 1, 1),
(209, 0, '0', 0, 1, 1408422012, 'qb_fenlei_/43', 'tmp-1_20140819120812_prr7y.jpg', 1, 1),
(210, 0, '0', 0, 1, 1408422012, 'qb_fenlei_/43', 'tmp-1_20140819120815_nmkv1.jpg', 1, 1),
(211, 0, '0', 0, 1, 1408422413, 'qb_fenlei_/43', 'tmp-1_20140819120853_zqmts.jpg', 1, 1),
(212, 0, '0', 0, 1, 1408427601, 'qb_fenlei_/43', 'tmp-1_20140819130822_78ayc.jpg', 1, 1),
(213, 0, '0', 0, 0, 1408512787, 'qb_fenlei_/43', 'tmp-_20140820130807_xgez7.jpg', 1, 1),
(214, 0, '0', 0, 0, 1408512787, 'qb_fenlei_/43', 'tmp-_20140820130811_ph2qs.jpg', 1, 1),
(215, 0, '0', 0, 1, 1408518055, 'qb_fenlei_/43', 'tmp-1_20140820150855_ox9bn.jpg', 1, 1),
(216, 0, '0', 0, 1, 1408519204, 'qb_fenlei_/43', 'tmp-1_20140820150804_uc5rg.jpg', 1, 1),
(217, 0, '0', 0, 1, 1408519770, 'qb_fenlei_/43', 'tmp-1_20140820150830_jtgfv.jpg', 1, 1),
(218, 0, '0', 0, 1, 1408551523, 'qb_fenlei_/43', 'tmp-1_20140821000843_nbcoi.jpg', 1, 1),
(219, 0, '0', 0, 1, 1408551523, 'qb_fenlei_/43', 'tmp-1_20140821000849_nbtfx.jpg', 1, 1),
(220, 0, '0', 0, 1, 1408555286, 'qb_fenlei_/43', 'tmp-1_20140821010826_ktuk7.jpg', 1, 1),
(221, 0, '0', 0, 1, 1408555337, 'qb_fenlei_/43', 'tmp-1_20140821010817_xrckf.jpg', 1, 1),
(222, 0, '0', 0, 1, 1408555565, 'qb_fenlei_/43', 'tmp-1_20140821010805_6gyvb.png', 1, 1),
(223, 0, '0', 0, 1, 1408555629, 'qb_fenlei_/43', 'tmp-1_20140821010809_ontq1.jpg', 1, 1),
(224, 0, '0', 0, 1, 1408555629, 'qb_fenlei_/43', 'tmp-1_20140821010815_0ofmu.jpg', 1, 1),
(225, 0, '0', 0, 0, 1408602696, 'qb_fenlei_/43', 'tmp-_20140821140836_klmlh.jpg', 1, 1),
(226, 0, '0', 0, 0, 1408640637, 'qb_fenlei_/43', 'tmp-_20140822010857_xqtmu.jpg', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `qb_yzimg`
--

CREATE TABLE IF NOT EXISTS `qb_yzimg` (
  `sid` varchar(8) NOT NULL default '',
  `imgnum` varchar(6) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`imgnum`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
