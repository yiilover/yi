<?php 

$IS_BIZLaneLead=0; //版本类型 0 - 免费版 1 - 商业版 
$AuthorizeURL="lanelead.com"; //授权域名 这里在自动注册会员时，可以用到

// 定义接口变量
$WEB_PATH = ROOT_PATH; //网站根目录
$cachepage = intval($cachepage);  //多进程采集
$refreshtime=1; //采集间隔

// 定义支持采集的模块
$Marray = array();

//news资讯频道 - 地方门户、b2b系统通用
$Marray[news][name] = "资讯频道(news)";
$Marray[news][sort_table] = "news_sort";
$Marray[news][pre] = "news_";

//人才招聘 -  地方门户、b2b系统通用
$Marray[hr][name] = "人才招聘(hr)";
$Marray[hr][sort_table] = "hr_sort";
$Marray[hr][pre] = "hr_";

//黄页店铺  -  地方门户、b2b系统通用
$Marray[hy][name] = "黄页店铺(hy)";
$Marray[hy][sort_table] = "hy_sort";
$Marray[hy][pre] = "hy_";

//分类系统 - 地方门户、单独分类系统
$Marray[fenlei][name] = "分类系统(fenlei)";
$Marray[fenlei][sort_table] = "fenlei_sort";
$Marray[fenlei][pre] = "fenlei_";

//房产频道 - 地方门户、整站系统
$Marray[house][name] = "房产频道(house)";
$Marray[house][sort_table] = "house_sort";
$Marray[house][pre] = "house_";

//团购活动 - 地方门户
$Marray[tuangou][name] = "团购活动(tuangou)";
$Marray[tuangou][sort_table] = "tuangou_sort";
$Marray[tuangou][pre] = "tuangou_";

//商城系统 - 地方门户、整站系统
$Marray[shop][name] = "商城系统(shop)";
$Marray[shop][sort_table] = "shop_sort";
$Marray[shop][pre] = "shop_";


/*
//展会展览馆 -  b2b系统专有
$Marray[showroom][name] = "展会展览馆(showroom)";
$Marray[showroom][sort_table] = "showroom_sort";
$Marray[showroom][pre] = "showroom_";

//知道模块
$Marray[zhidao][name] = "知道模块(zhidao)";
$Marray[zhidao][sort_table] = "zhidao_sort";
$Marray[zhidao][pre] = "zhidao_";

*/

//DZ论坛系统 - 通用
$Marray[discuz][name] = "DZ论坛系统(discuz)";
$Marray[discuz][sort_table] = "forums";

//phpwind论坛系统 - 通用
$Marray[phpwind][name] = "PW论坛系统(phpwind)";
$Marray[phpwind][sort_table] = "{$TB_pre}forums";

?>