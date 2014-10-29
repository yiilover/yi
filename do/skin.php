<?php
require(dirname(__FILE__)."/"."global.php");

//选中模版
if($job=='skin')
{
	
refreshto("$webdb[www_url]/","网站模版切换成功",'0');
		
}
require(ROOT_PATH."inc/head.php");
require(html("skin"));
require(ROOT_PATH."inc/foot.php");


?>