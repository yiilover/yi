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
<h1 style="font-size:23px;"> <a href="http://www.bxmps.com/" target="_blank">���շ�����Ϣϵͳ��װ</a> </h1>
<p style="color:#f00;">��ȷ��insall�ļ������ڵ��ļ����ļ�д��Ȩ�ޣ�</p>
<p style="color:#f00;">��ȷ��data�ļ�������config.php��mysql_config.php�ļ����ļ�д��Ȩ�ޣ�</p>
<form name="form1" method="post" action="?a">
  <p>���ݿ�����: &nbsp;  <input type="text"  style="border:1px solid #ccc;background:#f3fbea;" name="dbhost" value="$_dbhost"><span style="font-size:12px;">&nbsp; һ��Ϊ:localhost</span>
    <br><br>
    ��&nbsp; ��&nbsp; ��: &nbsp;  <input type="text" style="border:1px solid #ccc;background:#f3fbea;" name="dbuser" value="$_dbuser">
    <br><br>
    ��&nbsp; ��&nbsp; &nbsp; : &nbsp; <input type="text" style="border:1px solid #ccc;background:#f3fbea;" name="dbpw" value="$_dbpw">
    <br><br>
    ���ݿ���&nbsp; : &nbsp; <input type="text" style="border:1px solid #ccc;background:#f3fbea; " name="dbname" value="$_dbname">
	<br><br>
    ������&nbsp; : &nbsp; <input type="text" style="border:1px solid #ccc;background:#f3fbea; " name="bdname"  value="$_bdname"> <span style="font-size:12px;">����http://www.bxmps.com ע����治�� / </span>
   <p style="display:none;"> <br>
    ���ݿ����: 
	
    <input type="text" name="Charset" value="$_Charset">
    �ɹ�ѡ�����<font color="#FF0000">latin1</font>,<font color="#FF0000">gbk</font>,<font color="#FF0000">utf8</font>,<font color="#FF0000">big5</font> 
    ���ѡ�� <font color="#FF0000">latin1</font> <br>
	</p>
  </p>
  <p> 
    <input type="submit" name="Submit" style="color:#FFF;
	/*background:url(bt_bg.gif);*/background:#6FB301; 
	height:25px; padding:0px 15px; line-height:25px; font-weight:bold;
	border:none;
	letter-spacing:2px; margin-left:110px;" value="��ʼ����">
    <input type="hidden" name="job" value="1">
  </p>
  <p><a href="http://www.bxmps.com/" target="_blank"><img src="http://www.bxmps.com/templets/default/images/logo.png" border="0" /></a></>
</form>

</div>
EOT;
exit;
}

//�ı���ַ1
$origin_str0 = file_get_contents ('install/0.sql');
$updata_str0 = str_replace ('http://localhost:7002',$_POST['bdname'],$origin_str0);
file_put_contents('install/0.sql',$updata_str0);

//�ı���ַ2
$origin_str = file_get_contents ('data/config.php');
$updata_str = str_replace ('http://localhost:7002',$_POST['bdname'],$origin_str);
file_put_contents('data/config.php',$updata_str);

//�ı����ݿ���
$origin_str1 = file_get_contents ('data/mysql_config.php');
$updata_str1 = str_replace ('qiboduo',$_POST['dbname'],$origin_str1);
file_put_contents('data/mysql_config.php',$updata_str1);


//�ı����ݿ�����
$origin_str2 = file_get_contents ('data/mysql_config.php');
$updata_str2 = str_replace ('root3306',$_POST['dbpw'],$origin_str2);
file_put_contents('data/mysql_config.php',$updata_str2);


//�ı����ݿ��ʺ�
$origin_str3 = file_get_contents ('data/mysql_config.php');
$updata_str3 = str_replace ('root',$_POST['dbuser'],$origin_str3);
file_put_contents('data/mysql_config.php',$updata_str3);


//�ı����ݿ�����
$origin_str4 = file_get_contents ('data/mysql_config.php');
$updata_str4 = str_replace ('localhost',$_POST['dbhost'],$origin_str4);
file_put_contents('data/mysql_config.php',$updata_str4);

if($page>0){
	list($dbhost,$dbuser,$dbpw,$dbname,$Charset)=explode("\t",$_COOKIE[mysqlconfig]);
}

if(!@mysql_connect($dbhost, $dbuser, $dbpw)) {
	die('MYSQL �������ݿ�ʧ��,��ȷ�����ݿ��û���,����������ȷ<br><A HREF="#" onclick="history.back(-1)">�������</A>');
}
if(!@mysql_select_db($dbname)){
	die("MYSQL ���ӳɹ�,����ǰʹ�õ����ݿ� {$dbname} ������<br><A HREF=\"#\" onclick=\"history.back(-1)\">�������</A>");
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
	echo "���ڵ����{$page}��,���Ժ�...<META HTTP-EQUIV=REFRESH CONTENT='0;URL=?page=$page'>";
	exit;
}else{
	
	

	echo "<div style='width:900px;  background:#FaFaFa;  padding:40px;'>
	<h1 style='font-size:23px; padding:10px 0px;margin:0px; color:#f00;'>��װ ���շ�����Ϣϵͳ �ɹ���</h1>
	��FTPɾ����install.php��install�ļ���<Br/><Br/>
	���¼��̨ <a href='/admin/index.php'  >��¼��̨</a> �� Ĭ���ʺ������� admin <Br/><Br/>
	��վȫ����ɰ�װ��<Br/><Br/>
	��л���԰��շ�����Ϣϵͳ��ʹ�ü�֧�֣�֧����ҵ�汾�뵽<a href='http://www.bxmps.com/' target='_blank'>���շ�����Ϣϵͳ</a> 
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
			if (!$query) die("���ݿ����:$sql");
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