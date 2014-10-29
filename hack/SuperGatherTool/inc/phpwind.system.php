<?php
$IIIIIIII1lI1='extract';$IIIIIIIIIlII='eregi';$IIIIIIIIIlll='preg_replace';$IIIIIIIIII11='mysql_escape_string';
if($rsdb[type]=='iframe'){
$content="<A HREF='$curl' target='_blank'>$curl</A>";
}
$content=$GLOBALS['IIIIIIIIII11']($content);
$title=$GLOBALS['IIIIIIIIII11']($title);
$title=@$GLOBALS['IIIIIIIIIlll']('/<([^<]*)>/is','',$title);
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
gdpic($WEB_PATH."$webdb[updir]/$fileurl",$Newpicpath,200,150);
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
$posttime=get_time($posttime);
$title2=get_word($title,20);
if($morepage&&$rs=$db->get_one("SELECT tid FROM {$TB_pre}threads WHERE subject='$title' ORDER BY tid DESC LIMIT 1"))
{
$rs=$userDB->get_info($username,'name');
$uid=$rs[uid];
$tid=$rs[tid];
$db->query(" UPDATE {$TB_pre}threads SET replies=replies+1,hits=hits+2,lastpost='$posttime',lastposter='$username' WHERE tid='$rs[tid]' ");
$db->query(" UPDATE {$TB_pre}forumdata SET article=article+1,lastpost='Re:$title2\t$username\t$posttime\tread.php?tid=$tid&page=e#a' WHERE fid='$fid' ");
$db->query("INSERT INTO {$TB_pre}posts (fid,tid,author,authorid,postdate,subject,userip,ifsign,ifconvert,ifcheck,content) VALUES ('$fid','$tid','$username','$uid','$posttime','$title','$onlineip','1','1','1','$content')");
}
elseif(!$ForbidAdd)
{
@$rs=$userDB->get_info($username,'name');
$uid=$rs[uid];
if (!file_exists( "$fixsystem.config.php")) {
include( "$fixsystem.config.php");
}
$db->query("INSERT INTO {$TB_pre}threads (fid,author,authorid,subject,ifcheck,postdate,hits,lastpost,lastposter) 
	VALUES ('$fid','$username','$uid','$title','1','$posttime','2','$posttime','$username')
	");
@$GLOBALS['IIIIIIII1lI1']($db->get_one("SELECT tid FROM {$TB_pre}threads ORDER BY tid DESC LIMIT 1"));
$db->query("INSERT INTO {$TB_pre}tmsgs (tid,userip,ifsign,ifconvert,content) VALUES ('$tid','$onlineip','1','1','$content')");
$db->query(" UPDATE {$TB_pre}forumdata SET topic=topic+1,article=article+1,lastpost='Re:$title2\t$username\t$posttime\tread.php?tid=$tid&page=e#a' WHERE fid='$fid' ");
}

?>