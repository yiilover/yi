<?php
require(dirname(__FILE__)."/"."global.php");

//ѡ��ģ��
if($job=='skin')
{
	
refreshto("$webdb[www_url]/","��վģ���л��ɹ�",'0');
		
}
require(ROOT_PATH."inc/head.php");
require(html("skin"));
require(ROOT_PATH."inc/foot.php");


?>