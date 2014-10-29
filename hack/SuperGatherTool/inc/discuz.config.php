<?php 
// discuz论坛 - 采集配置文件
// 功能：齐博 discuz论坛 的采集配置程序，可以灵活处理采集的内容
// 作者：深蓝  QQ： 570713592  网址： http://www.lanelead.com  论坛： http://bbs.lanelead.com
// 更新日期： 2011-7-25

$hits = rand(5, 200); //随机点击数
$onlineip = rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255); //发布随机IP	

$author = $author?filtrate($author):$username; //采集文章作者,如果为空则默认为采集用户
$copyfrom = $copyfrom?filtrate($copyfrom):"网络"; //文章来源,如果为空则默认来源为 网络 
$hits = intval($hits); 
// 获取时间
$posttime = get_time($posttime);

$yz = 1;

$restags = ""; //设置所有字段中不需要过滤的HTML标记(不包含connent) 例如:$restags="<img> <p>"; 中间用半角空格间隔


?>