<?php
 $IIIIIIIIl1lI='basename';$IIIIIIIIl1I1='ereg';$IIIIIIIIl1Il='trim';$IIIIIIIIll1l='preg_match';$IIIIIIIIllIl='copy';$IIIIIIIIlI11='time';$IIIIIIIIlI1I='is_dir';$IIIIIIIIlIll='strpos';$IIIIIIIIlIlI='unlink';$IIIIIIIIlII1='filesize';$IIIIIIIII1II='is_array';$IIIIIIIIIlll='preg_replace';$IIIIIIIIIllI='explode';$IIIIIIIIIlII='eregi';$IIIIIIIIII11='mysql_escape_string';
unset($_pre);
$_pre = $pre .$Marray[$fixsystem][pre];
if ($rsdb[type] == 'iframe') {
$content = "<A HREF='$curl' target='_blank'>$curl</A>";
}
if ($iframeurl) {
$content = "<A HREF='$iframeurl' target='_blank'>$iframeurl</A>";
}
$content = $GLOBALS['IIIIIIIIII11']($content);
if ($GLOBALS['IIIIIIIIIlII']('@@',$title)) {
list($title,$picurl) = $GLOBALS['IIIIIIIIIllI']('@@',$title);
}
$title = @$GLOBALS['IIIIIIIIIlll']('/<([^>]*)>/is','',$title);
$title = $GLOBALS['IIIIIIIIII11']($title);
$ForbidAdd = '';
if ($rsdb[gatherthesame] &&!$morepage) {
$ForbidAdd = $db ->get_one("SELECT id FROM {$_pre}content WHERE title='$title' ORDER BY id DESC LIMIT 1");
}
if (( $morepage &&$rs = $db ->get_one("SELECT id FROM {$_pre}content WHERE title='$title' ORDER BY id DESC LIMIT 1") ) ||!$ForbidAdd) {
if (!$picurl &&$GLOBALS['IIIIIIIII1II']($Filedb)) {
foreach($Filedb AS $key =>$value) {
if ($GLOBALS['IIIIIIIIIlII']("(\.png|\.jpg|\.gif)$",$value)) {
$picurl = $value;
break;
}
}
}
if ($Filedb &&$getfile) {
foreach($Filedb AS $key =>$fileurl) {
$content = str_replace($oldFileDB[$key],tempdir("$fileurl"),$content);
if ($GLOBALS['IIIIIIIIIlII']("(jpg|gif|png)$",$fileurl) &&($webdb[if_gdimg])) {
if (!$havemakesmallpic) {
$Newpicpath = $WEB_PATH ."$webdb[updir]/$fileurl.gif";
gdpic($WEB_PATH ."$webdb[updir]/$fileurl",$Newpicpath,300,225,$webdb[autoCutSmallPic]?array('fix'=>1):'');
gdpic($WEB_PATH ."$webdb[updir]/$fileurl","$Newpicpath.jpg",225,300,$webdb[autoCutSmallPic]?array('fix'=>1):'');
gdpic($WEB_PATH ."$webdb[updir]/$fileurl","$Newpicpath.jpg.jpg",300,300,$webdb[autoCutSmallPic]?array('fix'=>1):'');
if ($GLOBALS['IIIIIIIIlII1']($Newpicpath) >1024 * 3) {
$picurl = "$fileurl.gif";
}else {
$GLOBALS['IIIIIIIIlIlI']($Newpicpath);
}
}
if ($webdb[is_waterimg]) {
include_once($WEB_PATH .'inc/waterimage.php');
imageWaterMark($WEB_PATH ."$webdb[updir]/$fileurl",$webdb[waterpos],$WEB_PATH .$webdb[waterimg]);
}
}
}
}elseif ($Filedb) {
foreach($Filedb AS $key =>$fileurl) {
$content = str_replace($oldFileDB[$key],"$fileurl",$content);
}
}
if (!$getfile &&$picurl &&!$GLOBALS['IIIIIIIIlIll']($picurl,'none.')) {
$picurl_dir = 'picurl';
if (!$GLOBALS['IIIIIIIIlI1I']($WEB_PATH ."$webdb[updir]/$picurl_dir")) {
makepath($WEB_PATH ."$webdb[updir]/$picurl_dir");
}
$picurl_name = "$picurl_dir/".$GLOBALS['IIIIIIIIlI11']() .'.gif';
if ($picurl_content = sockOpenUrl($picurl)) {
write_file($WEB_PATH ."$webdb[updir]/{$picurl_name}",$picurl_content);
}else {
$GLOBALS['IIIIIIIIllIl']($picurl,$WEB_PATH ."$webdb[updir]/{$picurl_name}");
}
$picurl = $picurl_name;
}
if ($picurl) {
$ispic = 1;
}else {
$ispic = 0;
}
if ($GLOBALS['IIIIIIIIlIll']($telephone,'src')) {
$phone_dir = 'phone';
if (!$GLOBALS['IIIIIIIIlI1I']($WEB_PATH ."$webdb[updir]/$phone_dir")) {
makepath($WEB_PATH ."$webdb[updir]/$phone_dir");
}
$phone_name = "$phone_dir/".$GLOBALS['IIIIIIIIlI11']() .'.gif';
$phone_preg = "/src=\'(.*)\'/";
$GLOBALS['IIIIIIIIll1l']($phone_preg,$telephone,$phone_urlArray);
$phone_url = $GLOBALS['IIIIIIIIl1Il']($phone_urlArray[1]);
if (!$phone_url) {
$phone_preg = "/src=\"(.*)\"/";
$GLOBALS['IIIIIIIIll1l']($phone_preg,$telephone,$phone_urlArray);
$phone_url = $GLOBALS['IIIIIIIIl1Il']($phone_urlArray[1]);
}
$phone_url = $GLOBALS['IIIIIIIIIlll']("/(['\" ]*)([^'\" >]+)(.*)/is","\\2",$phone_url);
if (!$GLOBALS['IIIIIIIIl1I1']('^http://',$phone_url)) {
if ($GLOBALS['IIIIIIIIl1I1']('^/',$phone_url)) {
$phone_url = $GLOBALS['IIIIIIIIIlll']("/http:\/\/([^\/]+)(.*)/is","http://\\1$phone_url",$curl);
}else {
$phone_url = str_replace($GLOBALS['IIIIIIIIl1lI']($curl),'',$curl) .$phone_url;
}
}
if ($phone_content = LaneLead_GetContents($phone_url)) {
write_file($WEB_PATH ."$webdb[updir]/{$phone_name}",$phone_content);
}else {
$GLOBALS['IIIIIIIIllIl']($phone_url,$WEB_PATH ."$webdb[updir]/{$phone_name}");
}
$telephone = $phone_name;
}
$content = En_TruePath($content);
}
if ($morepage &&$rs = $db ->get_one("SELECT id FROM {$_pre}content WHERE title='$title' ORDER BY id DESC LIMIT 1")) {
$urs = $userDB ->get_info($username,'name');
$uid = $urs[uid];
$db ->query(" UPDATE {$_pre}content SET pages=pages+1 WHERE id='$rs[id]' ");
$db ->query("INSERT INTO `{$_pre}content_1` (  `id` , `fid` ,uid,  `content`) VALUES ( '$rs[id]', '$fid','$uid', '$content')");
}elseif (!$ForbidAdd) {
$fidDB = $db ->get_one(" SELECT A.name,A.config,A.mid FROM {$_pre}sort  A  WHERE A.fid='$fid' ");
$fname = $fidDB[name];
$urs = $userDB ->get_info($username,'name');
$uid = $urs[uid];
if (!file_exists("$fixsystem.config.php")) {
include("$fixsystem.config.php");
}
$db ->query("
	INSERT INTO `{$_pre}content` 
	( `title`, `mid`,  `fid`, `fname`, `pages`, `posttime`, `list`, `uid`, `username`,`copyfrom`, `copyfromurl`,  `picurl`,`ispic`, `yz`, `keywords`, `jumpurl`, `iframeurl`, `ip`,`author`,`hits`,`city_id`) 
	VALUES
	('$title','1','$fid','$fname','1','$posttime','$posttime','$uid','$username','$copyfrom','$curl','$picurl','$ispic','$yz','$keywords','$jumpurl','$iframeurl','$onlineip','$author','$hits','$city_id')
	");
$rs = $db ->get_one("SELECT id FROM {$_pre}content ORDER BY id DESC LIMIT 1 ");
$db ->query("INSERT INTO `{$_pre}content_1` (  `id` , `fid` ,`uid` ,  `content` ,topic) VALUES ( '{$rs[id]}', '{$fid}','{$uid}', '{$content}',1)");
}

?>