<?php
$IIIIIIII11II='addslashes';$IIIIIII1llI1='intval';$IIIIIIIIl1lI='basename';$IIIIIIIIl1I1='ereg';$IIIIIIIIl1Il='trim';$IIIIIIIIll1l='preg_match';$IIIIIIIIllIl='copy';$IIIIIIIIlI11='time';$IIIIIIIIlI1I='is_dir';$IIIIIIIIlIll='strpos';$IIIIIIIIlIlI='unlink';$IIIIIIIIlII1='filesize';$IIIIIIIII1II='is_array';$IIIIIIIIIlll='preg_replace';$IIIIIIIIIllI='explode';$IIIIIIIIIlII='eregi';$IIIIIIIIII11='mysql_escape_string';
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
if (!$ForbidAdd) {
if (!$picurl &&$GLOBALS['IIIIIIIII1II']($Filedb)) {
foreach($Filedb AS $key =>$value) {
if ($GLOBALS['IIIIIIIIIlII']("(\.png|\.jpg|\.gif)$",$value)) {
$picurl = $value;
break;
}
}
}
if ($Filedb &&$getfile &&!$ForbidAdd) {
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
$AutoReg = isset($AutoReg) ?$AutoReg : 0 ;
$CompanyName = $GLOBALS['IIIIIIIIII11']($GLOBALS['IIIIIIIIl1Il']($CompanyName));
if ($AutoReg &&!$crs = $db ->get_one("SELECT rid,title,uid,username FROM {$pre}hy_company WHERE title='$CompanyName' LIMIT 1")) {
do {
$username = LaneLead_GetCompanyname($CompanyName);
$username = $username?$username: getCode(6);
$email = $email?$email : $username .'@'.$AuthorizeURL ;
}while ($checkrs = $db ->get_one("SELECT uid FROM `{$pre}memberdata` WHERE username='$username'"));
$passwd = '123654';
$groupid = 8;
$grouptype = 1;
$yz = 1;
$renzheng = 1;
$levels = 0;
$if_homepage = 1;
$posttime = get_time($posttime);
$array = array('password'=>$passwd,
'username'=>$username,
'groupid'=>$groupid,
'email'=>$email,
'grouptype'=>$grouptype
);
$uid = $userDB ->register_user($array);
$qy_content = $GLOBALS['IIIIIIIIII11']($GLOBALS['IIIIIIIIl1Il']($gather_module_valeDB[qy_content]));
$db ->query("
			INSERT INTO `{$pre}hy_company` 
			(`title`,`fname`,`hits`,`posttime`,`uid`,`username`,`picurl`,`yz`,`city_id`,`zone_id`,`street_id`,`renzheng`,`levels`,`content`,`qy_cate`,`qy_saletype`,`qy_regmoney`,`qy_createtime`,`qy_regplace`,`qy_address`,`qy_postnum`,`qy_pro_ser`,`my_buy`,`my_trade`,`qy_contact`,`qy_contact_zhiwei`,`qy_contact_sex`,`qy_contact_tel`,`qy_contact_mobile`,`qy_contact_fax`,`qy_contact_email`,`qy_website`,`qq`,`msn`,`skype`,`ww`,`bd_pics`,`toptime`,`if_homepage`,`permit_pic`,`guo_tax_pic`,`di_tax_pic`,`organization_pic`,`idcard_pic`,`gg_maps`) 
			VALUES
			('{$CompanyName}','{$fname}','{$hits}','{$posttime}','{$uid}','{$username}','{$picurl}','{$yz}','{$city_id}','{$zone_id}','{$street_id}','{$renzheng}','{$levels}','{$qy_content}','{$qy_cate}','{$qy_saletype}','{$qy_regmoney}','{$qy_createtime}','{$qy_regplace}','{$qy_address}','{$qy_postnum}','{$qy_pro_ser}','{$my_buy}','{$my_trade}','{$qy_contact}','{$qy_contact_zhiwei}','{$qy_contact_sex}','{$qy_contact_tel}','{$qy_contact_mobile}','{$qy_contact_fax}','{$qy_contact_email}','{$qy_website}','{$qy_qq}','{$msn}','{$skype}','{$ww}','{$bd_pics}','{$toptime}','{$if_homepage}','{$permit_pic}','{$guo_tax_pic}','{$di_tax_pic}','{$organization_pic}','{$idcard_pic}','{$gg_maps}')
		");
foreach ($cfidDB as $key =>$value) {
$cfid = $GLOBALS['IIIIIII1llI1']($value);
$db ->query("INSERT INTO {$pre}hy_company_fid (uid, fid) VALUES ($uid, $cfid)");
}
}else {
if ($crs) {
$username = $crs[username];
$uid = $crs[uid];
}else {
$urs = $userDB ->get_info($username,'name');
$uid = $urs[uid];
}
}
$fidDB = $db ->get_one(" SELECT A.name,A.fid,B.config,A.mid FROM {$_pre}sort A LEFT JOIN {$_pre}module B ON A.mid=B.id WHERE A.fid='{$fid}' ");
if (!$fidDB[fid]) {
showerr('��û��ѡ������Ҫ������Ŀ ');
}
if ($fidDB[type] == 1) {
showerr('�㲻�ܰ����ݲɽ������,ֻ�ܲɽ�С��Ŀ');
}
$fname = $fidDB[name];
if (!file_exists("$fixsystem.config.php")) {
include("$fixsystem.config.php");
}
$db ->query("
	INSERT INTO `{$_pre}content` 
	(`title`,`mid`,`fid`,`fname`,`hits`,`posttime`,`list`,`uid`,`username`,`picurl`,`ispic`,`yz`,`keywords`,`ip`,`endtime`,`city_id`) 
	VALUES
	('{$title}','{$fidDB[mid]}','{$fid}','{$fname}','{$hits}','{$posttime}','{$posttime}','{$uid}','{$username}','{$picurl}','{$ispic}','{$yz}','{$keywords}','{$onlineip}','{$endtime}','{$city_id}')
	");
unset($field_array);
$query2 = $db ->query("SELECT field_name FROM {$_pre}field WHERE mid='$fidDB[mid]'");
while ($rs2 = $db ->fetch_array($query2)) {
$field_array[$rs2[field_name]] = $rs2;
}
if ($field_array) {
$SQL = '';
foreach ($field_array as $key =>$value) {
if ($gather_module_valeDB[$key]) {
$v = $GLOBALS['IIIIIIII11II'](strip_tags($gather_module_valeDB[$key],$restags));
$SQL .= ',`'.$key ."`='{$v}'";
}
}
$rs = $db ->get_one("SELECT id FROM {$_pre}content  ORDER BY id DESC LIMIT 1 ");
$db ->query("INSERT INTO `{$_pre}content_{$fidDB[mid]}` SET id='{$rs[id]}',fid='{$fid}',uid='{$uid}' {$SQL} ");
$db ->query("UPDATE `{$_pre}content_{$fidDB[mid]}` SET content='{$content}' WHERE id='{$rs[id]}'");
}
}

?>