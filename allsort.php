<?php
require(dirname(__FILE__)."/f/global.php");
choose_domain();	//�����ж�

/**
*��ǩʹ��
**/
$chdb[main_tpl] = html("allsort");
$ch_fid	= $ch_pagetype = 5;
$ch_module = $webdb[module_id]?$webdb[module_id]:99;	//ϵͳ�ض�ID����,ÿ��ϵͳ������ͬ
require(ROOT_PATH."inc/label_module.php");

require(ROOT_PATH."data/friendlink.php");
//ÿ����Ŀ����Ϣ��
$InfoNum=get_infonum($city_id);
require(Mpath."inc/head.php");
require(html("allsort"));
require(Mpath."inc/foot.php");
