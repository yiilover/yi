<?php
if(is_file('install.php')){
	header("location:install.php");exit;
}

require(dirname(__FILE__)."/f/global.php");
if($jobs=='show'){	//��ǩ����
	//��Զ���а�,�п���CITYID������.
	if(!$city_id){
		foreach( $city_DB[name] AS $key=>$value){
			$city_id=$key;
			break;
		}
	}

}elseif(!$city_id){	//ǿ���û��˹�ѡ�����

	require(dirname(__FILE__)."/allcity.php");
	exit;

}elseif($city_DB[domain][$city_id]){

	if(preg_replace("/http:\/\/([^\/]+)\/(.*)/is","http://\\1",$WEBURL)!=$city_DB[domain][$city_id]){
		
		header("location:".$city_DB[domain][$city_id]);
		exit;
	}
}

//choose_domain();	//�����ж�

//����
$Cache_FileName=ROOT_PATH."cache/index/$city_id/index.php";
if(!$jobs&&!$MakeIndex&&$webdb[Info_index_cache]&&(time()-filemtime($Cache_FileName))<($webdb[Info_index_cache]*60)){
	echo read_file($Cache_FileName);
	exit;
}

if(count($city_DB[name])>1&&$webdb[Info_htmlType]==2){
	foreach( $city_DB[name] AS $key=>$value){
		if(!$city_DB['dirname'][$key]){
			//showerr("�������˸߼�α��̬,����û�а����г�������Ŀ¼,�����̨�����г�������Ŀ¼!<br>Ŀǰ����û�аѳ��С�{$value}�����ɶ���Ŀ¼!");
		}
	}
}

require(ROOT_PATH."data/friendlink.php");

//SEO
$titleDB['title'] = $city_DB['metaT'][$city_id]?seo_eval($city_DB['metaT'][$city_id]):"{$city_DB[name][$city_id]} $webdb[webname]";
$titleDB['keywords']	= $city_DB['metaK'][$city_id]?seo_eval($city_DB['metaK'][$city_id]):$webdb['metakeywords'];
$titleDB['description'] = $city_DB['metaD'][$city_id]?seo_eval($city_DB['metaD'][$city_id]):$webdb['description'];

//����ģ��
if($city_DB[tpl][$city_id]){
	list($head_tpl,$foot_tpl,$index_tpl)=explode("|",$city_DB[tpl][$city_id]);
	$head_tpl && $head_tpl=Mpath.$head_tpl;
	$foot_tpl && $foot_tpl=Mpath.$foot_tpl;
	$index_tpl && $index_tpl=Mpath.$index_tpl;
}

/**
*��ǩʹ��
**/
$chdb[main_tpl] = html("index",$index_tpl);
$ch_fid	= $ch_pagetype = 0;
$ch_module = $webdb[module_id]?$webdb[module_id]:99;	//ϵͳ�ض�ID����,ÿ��ϵͳ������ͬ
require(ROOT_PATH."inc/label_module.php");


/**
*�Ƽ�����Ŀ����ҳ��ʾ
**/
$listdb_moresort=Info_ListMoreSort($webdb[InfoIndexCSRow],$webdb[InfoIndexCSLeng],$city_id);

//ÿ����Ŀ����Ϣ��
$InfoNum=get_infonum($city_id);
require(Mpath."inc/head.php");
require(html("index",$index_tpl));
require(Mpath."inc/foot.php");


if(!$jobs&&!$MakeIndex&&$webdb[Info_index_cache]&&(time()-filemtime($Cache_FileName))>($webdb[Info_index_cache]*60)){
	if(!is_dir(dirname($Cache_FileName))){
		makepath(dirname($Cache_FileName));
	}
	write_file($Cache_FileName,$content);
}elseif($jobs=='show'){
	@unlink($Cache_FileName);
}

?>