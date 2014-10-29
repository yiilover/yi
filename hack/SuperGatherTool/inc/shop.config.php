<?php 
// 商城模块 - 采集配置文件
// 功能：齐博 商城模块 的采集配置程序，可以灵活处理采集的内容
// 作者：深蓝  QQ： 570713592  网址： http://www.lanelead.com  论坛： http://bbs.lanelead.com
// 更新日期： 2011-7-25
//处理一些字段  高级规则可以在此处理一些临时变量或对采集的内容做高级处理，以满足更有效、有针对性的采集
$title = str_replace("��", "㎡", $title);
$content = str_replace("��", "㎡", $content);

//对采集的电话做纠错处理，防止出现入库错误
if (strlen($telephone) >= 30) {
	$telephone = '';
} 

//自定义一些字段默认值： 如果没有定义该字段采集，则用默认值入库
$telephone = $telephone?$telephone:$userdb[telephone];
$sortid = $sortid ? $sortid:1; //有无会员价 1 - 有 0 - 无
$market_price = $market_price ? $market_price:"面议";
$shoptype = $shoptype ? $shoptype:"见详细介绍";

$hits = $hits ? $hits: rand(5, 200); //随机点击数
$hits = intval($hits); 
$onlineip = $onlineip?$onlineip : rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255); //发布随机IP	

$posttime = $begintime = get_time($posttime); //发布时间
$onedaytime = "86400";
$showday = $showday?$showday: 30; //默认有效期为30天
$showday = intval($showday); 
$endtime = $showday * $onedaytime + $posttime; //结束时间 有效期

$yz = $yz ? $yz : 1; //是否通过审核发布： 1 - 立即发布  0 - 需要审核

$restags = ""; //设置所有字段中不需要过滤的HTML标记(不包含connent) 例如:$restags="<img> <p>"; 中间用半角空格间隔

?>