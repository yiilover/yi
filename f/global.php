<?php
define('Mpath',dirname(__FILE__).'/');
define( 'Mdirname' , preg_replace("/(.*)\/([^\/]+)/is","\\2",str_replace("\\","/",dirname(__FILE__))) );

require_once(Mpath."../inc/common.inc.php");
require_once(ROOT_PATH."data/module_db.php");			//ģ�������
require_once(Mpath."inc/function.php");				//����ģ�����õ��ĺ���
@include_once(Mpath."inc/biz.php");
@include_once(ROOT_PATH."data/ad_cache.php");	//ȫվ�����������ļ�
@include_once(ROOT_PATH."data/label_hf.php");	//��ǩ��ͷ��׵ı���ֵ
@include_once(ROOT_PATH."data/module.php");		//ģ��ϵͳ�Ĳ�������ֵ
require_once(Mpath."inc/module.class.php");			//�Զ����ֶ���صĹ���
$Fid_db = include(ROOT_PATH."data/all_fid.php");			//��Ŀ������

if(!$webdb[web_open])
{
	$webdb[close_why] = str_replace("\n","<br>",$webdb[close_why]);
	showerr("��վ��ʱ�ر�:$webdb[close_why]");
}

$_pre="{$pre}{$webdb[module_pre]}";					//���ݱ�ǰ׺

$Module_db=new Module_Field();						//�Զ���ģ�����

$Murl=$webdb[www_url].'/'.Mdirname;					//��ģ��ķ��ʵ�ַ
$Mdomain=$ModuleDB[$webdb[module_pre]][domain]?$ModuleDB[$webdb[module_pre]][domain]:$Murl;

@include_once(ROOT_PATH."data/all_city.php");			//����Ҫ����$Mdomain����֮��,���Ҫ�õ�$Mdomain����


//����IIS,����������Ĵ�����
if(!$_GET[choose_cityID]){
	foreach( $city_DB[domain] AS $key=>$value){
		if($value==preg_replace("/http:\/\/([^\/]+)\/(.*)/is","http://\\1",$WEBURL)){
			$_GET[choose_cityID]=$key;
			setcookie('city_id',$key,$timestamp+3600,'/');
			break;
		}
	}
}

if($city_DB[domain]&&!$webdb[cookieDomain]){
	//showerr('�������˳��ж�������,�����̨����һ��COOKIE��Ч����,�����û���¼ǰ̨�᲻����!');
}



//��ͨα��̬
if($stringID&&$webdb[Info_htmlType]==1){
	$detail=explode("-",$stringID);
	for($i=0;$i<count($detail) ;$i++ ){
		$$detail[$i]=$_GET[$detail[$i]]=$detail[++$i];
	}
}

if($_GET[city_id]>0&&!$city_DB[name][$_GET[city_id]]){
	showerr("�˵���������");
}elseif($_GET[choose_cityID]>0&&!$city_DB[name][$_GET[choose_cityID]]){
	showerr("�˵���������");
}

unset($foot_tpl,$head_tpl,$index_tpl,$list_tpl,$bencandy_tpl);
$ch=intval($ch);
$fid=intval($fid);
$id=intval($id);
$page=intval($page);
$city_id=intval($city_id);
$zone_id=intval($zone_id);
$street_id=intval($street_id);

@include_once(ROOT_PATH."data/zone/$city_id.php");



//$city_urlΪ�˻�ȡ����Ŀ¼�µ��ļ�·��
if($city_DB[domain][$city_id]){
	$city_url=$city_DB[domain][$city_id];
}elseif($city_DB['dirname'][$city_id]){
	$city_url=substr($city_DB['url'][$city_id],0,-1);
}else{
	$city_url=$webdb[www_url];
}


//��ҳ��������
//@extract($db->get_one("SELECT COUNT(*) AS allnumber FROM `{$_pre}content` WHERE city_id=$city_id"));
@extract($db->get_one("SELECT COUNT(*) AS allnumber FROM `{$_pre}content` "));
$nowtoday = date("Ymd",$timestamp);
@extract($db->get_one("SELECT COUNT(*) AS todaynumber FROM `{$_pre}content` WHERE city_id=$city_id  AND FROM_UNIXTIME( `posttime` , '%Y%m%d' ) = $nowtoday"));
//@extract($db->get_one("SELECT COUNT(*) AS todaynumber FROM `{$_pre}content` WHERE FROM_UNIXTIME( `posttime` , '%Y%m%d' ) = $nowtoday"));

?>