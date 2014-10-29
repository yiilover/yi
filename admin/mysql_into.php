<?php
error_reporting(7);
@set_time_limit(0);
$_dbhost='localhost';
$_dbuser='';
$_dbpw='';
$_dbname='';
$_Charset='gbk';


foreach($_POST as $_key=>$_value){
	!ereg("^\_",$_key) && $$_key=$_POST[$_key];
}
foreach($_GET as $_key=>$_value){
	!ereg("^\_",$_key) && $$_key=$_GET[$_key];
}



if(!$job&&!$page){
print <<<EOT

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<div style=" width:900px;  background:#FaFaFa;  padding:40px;">
<h1 style="font-size:23px;"> <a href="http://www.bxmps.com/" target="_blank">百姓分类信息系统安装</a> </h1>
<p style="color:#f00;">请确定insall文件及以内的文件有文件写入权限！</p>
<p style="color:#f00;">请确定data文件及以内config.php和mysql_config.php文件有文件写入权限！</p>
<form name="form1" method="post" action="?a">
  <p>数据库主机: &nbsp;  <input type="text"  style="border:1px solid #ccc;background:#f3fbea;" name="dbhost" value="$_dbhost"><span style="font-size:12px;">&nbsp; 一般为:localhost</span>
    <br><br>
    用&nbsp; 户&nbsp; 名: &nbsp;  <input type="text" style="border:1px solid #ccc;background:#f3fbea;" name="dbuser" value="$_dbuser">
    <br><br>
    密&nbsp; 码&nbsp; &nbsp; : &nbsp; <input type="text" style="border:1px solid #ccc;background:#f3fbea;" name="dbpw" value="$_dbpw">
    <br><br>
    数据库名&nbsp; : &nbsp; <input type="text" style="border:1px solid #ccc;background:#f3fbea; " name="dbname" value="$_dbname">
	<br><br>
    绑定域名&nbsp; : &nbsp; <input type="text" style="border:1px solid #ccc;background:#f3fbea; " name="bdname"  value="$_bdname"> <span style="font-size:12px;">例：http://www.bxmps.com 注意后面不加 / </span>
   <p style="display:none;"> <br>
    数据库编码: 
	
    <input type="text" name="Charset" value="$_Charset">
    可供选择的有<font color="#FF0000">latin1</font>,<font color="#FF0000">gbk</font>,<font color="#FF0000">utf8</font>,<font color="#FF0000">big5</font> 
    最好选择 <font color="#FF0000">latin1</font> <br>
	</p>
  </p>
  <p> 
    <input type="submit" name="Submit" style="color:#FFF;
	/*background:url(bt_bg.gif);*/background:#6FB301; 
	height:25px; padding:0px 15px; line-height:25px; font-weight:bold;
	border:none;
	letter-spacing:2px; margin-left:110px;" value="开始导入">
    <input type="hidden" name="job" value="1">
  </p>
  <p><a href="http://www.bxmps.com/" target="_blank"><img src="http://www.bxmps.com/templets/default/images/logo.png" border="0" /></a></>
</form>

</div>
EOT;
exit;
}

//改变网址1
$origin_str0 = file_get_contents ('install/0.sql');
$updata_str0 = str_replace ('http://localhost:7002',$_POST['bdname'],$origin_str0);
file_put_contents('install/0.sql',$updata_str0);

//改变网址2
$origin_str = file_get_contents ('data/config.php');
$updata_str = str_replace ('http://localhost:7002',$_POST['bdname'],$origin_str);
file_put_contents('data/config.php',$updata_str);

//改变数据库名
$origin_str1 = file_get_contents ('data/mysql_config.php');
$updata_str1 = str_replace ('qiboduo',$_POST['dbname'],$origin_str1);
file_put_contents('data/mysql_config.php',$updata_str1);


//改变数据库密码
$origin_str2 = file_get_contents ('data/mysql_config.php');
$updata_str2 = str_replace ('root3306',$_POST['dbpw'],$origin_str2);
file_put_contents('data/mysql_config.php',$updata_str2);


//改变数据库帐号
$origin_str3 = file_get_contents ('data/mysql_config.php');
$updata_str3 = str_replace ('root',$_POST['dbuser'],$origin_str3);
file_put_contents('data/mysql_config.php',$updata_str3);


//改变数据库主机
$origin_str4 = file_get_contents ('data/mysql_config.php');
$updata_str4 = str_replace ('localhost',$_POST['dbhost'],$origin_str4);
file_put_contents('data/mysql_config.php',$updata_str4);

if($page>0){
	list($dbhost,$dbuser,$dbpw,$dbname,$Charset)=explode("\t",$_COOKIE[mysqlconfig]);
}

if(!@mysql_connect($dbhost, $dbuser, $dbpw)) {
	die('MYSQL 连接数据库失败,请确定数据库用户名,密码设置正确<br><A HREF="#" onclick="history.back(-1)">点击返回</A>');
}
if(!@mysql_select_db($dbname)){
	die("MYSQL 连接成功,但当前使用的数据库 {$dbname} 不存在<br><A HREF=\"#\" onclick=\"history.back(-1)\">点击返回</A>");
}

$mysqlV=mysql_get_server_info();

if($mysqlV>'4.1'){
	mysql_query("SET NAMES '$Charset'");
}

if( mysql_get_server_info() > '5.0' ){
	mysql_query("SET sql_mode=''");
}

if(!$page){
	setcookie("mysqlconfig","$dbhost\t$dbuser\t$dbpw\t$dbname\t$Charset");
}

$page=intval($page);
if(is_file("install/$page.sql")){
	insert_file("install/$page.sql");
	$page++;
	echo "正在导入第{$page}卷,请稍候...<META HTTP-EQUIV=REFRESH CONTENT='0;URL=?page=$page'>";
	exit;
}else{
	
	

	echo "<div style='width:900px;  background:#FaFaFa;  padding:40px;'>
	<h1 style='font-size:23px; padding:10px 0px;margin:0px; color:#f00;'>安装 百姓分类信息系统 成功！</h1>
	请FTP删除：install.php及install文件夹<Br/><Br/>
	请登录后台 <a href='/admin/index.php'  >登录后台</a> ， 默认帐号密码是 admin <Br/><Br/>
	网站全部完成安装！<Br/><Br/>
	感谢您对百姓分类信息系统的使用及支持，支持商业版本请到<a href='http://www.bxmps.com/' target='_blank'>百姓分类信息系统</a> 
	<p><a href='http://www.bxmps.com/' target='_blank'><img src='http://www.bxmps.com/templets/default/images/logo.png' border='0' /></a></>
	</div>
	";
	
}






function insert_file($file,$replace=''){
	global $Charset;
	$readfiles=read_file($file);
	if($replace){
		$readfiles=str_replace('$timestamp',"$timestamp",$readfiles);
	}
	$detail=explode("\n",$readfiles);
	$count=count($detail);
	for($j=0;$j<$count;$j++){
		$ck=substr($detail[$j],0,4);
		if( ereg("#",$ck)||ereg("--",$ck) ){
			continue;
		}
		$array[]=$detail[$j];
	}
	$read=implode("\n",$array); 
	$sql=str_replace("\r",'',$read);
	$detail=explode(";\n",$sql);
	$count=count($detail);
	for($i=0;$i<$count;$i++){
		$sql=str_replace("\r",'',$detail[$i]);
		$sql=str_replace("\n",'',$sql);
		$sql=trim($sql);
		if($sql){
			if(eregi("CREATE TABLE",$sql)){
				$mysqlV=mysql_get_server_info();
				$sql=preg_replace("/DEFAULT CHARSET=([a-z0-9]+)/is","",$sql);
				$sql=preg_replace("/TYPE=MyISAM/is","ENGINE=MyISAM",$sql);
				if($mysqlV>'4.1'){
					$sql=str_replace("ENGINE=MyISAM"," ENGINE=MyISAM DEFAULT CHARSET=$Charset ",$sql);
				}
			}
			
			$query=mysql_query($sql);
			if (!$query) die("数据库出错:$sql");
			$check++;
		}	
	}
	return $check;
}
function read_file($filename,$method="rb"){
	if($handle=@fopen($filename,$method)){
		@flock($handle,LOCK_SH);
		$filedata=@fread($handle,@filesize($filename));
		@fclose($handle);
	}
	return $filedata;
}