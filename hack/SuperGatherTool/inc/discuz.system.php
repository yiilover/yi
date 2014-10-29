<?php
$IIIIIIII1lI1='extract';$IIIIIIIIIlII='eregi';$IIIIIIIIIlll='preg_replace';$IIIIIIIIII11='mysql_escape_string';
if($rsdb[type]=='iframe'){
$content="<A HREF='$curl' target='_blank'>$curl</A>";
}
$content=$GLOBALS['IIIIIIIIII11']($content);
$title=$GLOBALS['IIIIIIIIII11']($title);
$title=@$GLOBALS['IIIIIIIIIlll']('/<([^>]*)>/is','',$title);
$ForbidAdd='';
if($rsdb[gatherthesame]&&!$morepage){
$ForbidAdd=$db->get_one("SELECT tid FROM {$TB_pre}threads WHERE subject='$title' ORDER BY tid DESC LIMIT 1");
}
if($Filedb&&$getfile&&!$ForbidAdd){
foreach( $Filedb AS $key=>$fileurl){
$content=str_replace($oldFileDB[$key],tempdir($fileurl),$content);
if( ($GLOBALS['IIIIIIIIIlII']("jpg$",$fileurl)||$GLOBALS['IIIIIIIIIlII']("gif$",$fileurl)) &&($webdb[if_gdimg]) ){
if( !$havemakesmallpic ){
$Newpicpath=$WEB_PATH."$webdb[updir]/$fileurl.gif";
gdpic($WEB_PATH."$webdb[updir]/$fileurl",$Newpicpath,200,150,$webdb[autoCutSmallPic]?array('fix'=>1):'');
if( file_exists($Newpicpath) ){
$picurl="$fileurl.gif";
$havemakesmallpic++;
}
}
if($webdb[is_waterimg]){
include_once($WEB_PATH.'inc/waterimage.php');
imageWaterMark($WEB_PATH."$webdb[updir]/$fileurl",$webdb[waterpos],$WEB_PATH.$webdb[waterimg]);
}
}
}
}elseif($Filedb){
foreach( $Filedb AS $key=>$fileurl){
$content=str_replace($oldFileDB[$key],"$fileurl",$content);
}
}
$title2=get_word($title,20);
if($morepage&&$rs=$db->get_one("SELECT tid FROM {$TB_pre}threads WHERE subject='$title' ORDER BY tid DESC LIMIT 1"))
{
$rs=$userDB->get_info($username,'name');
$uid=$rs[uid];
$tid=$rs[tid];
$db->query(" UPDATE {$TB_pre}threads SET replies=replies+1,views=views+2,lastpost='$timestamp',lastposter='$username' WHERE tid='$rs[tid]' ");
$db->query(" UPDATE {$TB_pre}forums SET posts=posts+1,lastpost='$uid\t$title2\t$timestamp\t$username' WHERE fid='$fid' ");
$db->query("INSERT INTO {$TB_pre}posts (fid,tid,first,useip,message,author,authorid,subject,dateline,htmlon) VALUES ('$fid','$tid',0,'$onlineip','$content','$username','$uid','$title','$timestamp',1)");
}
elseif(!$ForbidAdd)
{
$rs=$userDB->get_info($username,'name');
$uid=$rs[uid];
$db->query("INSERT INTO {$TB_pre}threads (fid,author,authorid,subject,dateline,views,lastpost,lastposter) 
	VALUES ('$fid','$username','$uid','$title','$timestamp','2','$timestamp','$username')
	");
@$GLOBALS['IIIIIIII1lI1']($db->get_one("SELECT tid FROM {$TB_pre}threads ORDER BY tid DESC LIMIT 1"));
$db->query("INSERT INTO {$TB_pre}posts (fid,tid,first,useip,message,author,authorid,subject,dateline,htmlon) VALUES ('$fid','$tid',1,'$onlineip','$content','$username','$uid','$title','$timestamp',1)");
$db->query(" UPDATE {$TB_pre}forums SET threads=threads+1,posts=posts+1,lastpost='$uid\t$title2\t$timestamp\t$username' WHERE fid='$fid' ");
}

?>