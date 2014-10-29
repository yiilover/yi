<?php
$IIIIIIllII11='chr';$IIIIIIllII1l='ord';$IIIIIIllIIlI='is_file';$IIIIIII1llI1='intval';$IIIIIIIlI1II='preg_match_all';$IIIIIIIIl1lI='basename';$IIIIIIIlIll1='strstr';$IIIIIIIIIlII='eregi';$IIIIIIlI1I1I='ceil';$IIIIIIlI1III='is_writable';$IIIIIIlIl111='chmod';$IIIIIIlIl11l='ftruncate';$IIIIIIlIl11I='fputs';$IIIIIIlIl1l1='touch';$IIIIIIIIlII1='filesize';$IIIIIIlIl1Il='fread';$IIIIIIlIll11='flock';$IIIIIIlIll1l='fopen';$IIIIIIlIllII='fclose';$IIIIIIlIlI11='fgets';$IIIIIIlIlI1I='feof';$IIIIIIlIlIl1='fwrite';$IIIIIIlIlIII='fsockopen';$IIIIIIlII1ll='parse_url';$IIIIIIIIl1I1='ereg';$IIIIIIlII1lI='strtoupper';$IIIIIIIIl1Il='trim';$IIIIIIIIll1l='preg_match';$IIIIIIIIllIl='copy';$IIIIIIIlIIll='implode';$IIIIIIlIIll1='file';$IIIIIIIllI11='substr';$IIIIIIIIlIll='strpos';$IIIIIIIIIlll='preg_replace';$IIIIIIIIIllI='explode';$IIIIIIlIII1l='rand';$IIIIIIlIIIll='array_rand'; 
function LaneLead_GetContents($gurl,$gsort = 'content',$sleep,$isproxy) {
global $cachepage;
if ($gsort == 'content') {
require_once 'Snoopy.class.php';
$referArray = array('http://www.baidu.com/','http://www.google.com.hk/','http://cn.yahoo.com/','http://www.163.com/','http://www.sohu.com/','http://www.sina.com.cn/','http://www.qq.com/');
$proxyArray = array('58.246.200.114:80','60.171.37.134:8080','60.175.203.243:8080','218.203.176.126:8080','221.130.162.204:80','221.130.162.205:80','221.130.162.248:80','221.130.162.249:80');
$useragentArray = array('* Baiduspider+(+http://www.baidu.com/search/spider.htm”)','* Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','* Googlebot/2.1 (+http://www.googlebot.com/bot.html)','* Googlebot/2.1 (+http://www.google.com/bot.html)','*Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp”)','*Mozilla/5.0 (compatible; iaskspider/1.0; MSIE 6.0)','*Sogou web spider/3.0(+http://www.sogou.com/docs/help/webmasters.htm#07″)','*Mozilla/5.0 (compatible; YodaoBot/1.0; http://www.yodao.com/help/webmaster/spider/”; )','*msnbot/1.0 (+http://search.msn.com/msnbot.htm”)');
$Grefer = $referArray[$GLOBALS['IIIIIIlIIIll']($referArray)];
$Guseragent = $useragentArray[$GLOBALS['IIIIIIlIIIll']($useragentArray)];
$Gforwarded = $GLOBALS['IIIIIIlIII1l'](0,255) .'.'.$GLOBALS['IIIIIIlIII1l'](0,255) .'.'.$GLOBALS['IIIIIIlIII1l'](0,255) .'.'.$GLOBALS['IIIIIIlIII1l'](0,255);
$Gproxy = $proxyArray[$GLOBALS['IIIIIIlIIIll']($proxyArray)];
$Gproxy = $GLOBALS['IIIIIIIIIllI'](':',$Gproxy);
$proxy_host = $Gproxy[0];
$proxy_port = $Gproxy[1];
$Host = $GLOBALS['IIIIIIIIIlll']("/http:\/\//is",'',$gurl);
$n = $GLOBALS['IIIIIIIIlIll']($Host,'/');
$Host = $GLOBALS['IIIIIIIllI11']($Host,0,$n);
$snoopy = new Snoopy;
$snoopy ->agent = $Guseragent;
$snoopy ->referer = $Grefer;
$snoopy ->rawheaders['Host'] = "$Host";
$snoopy ->rawheaders['X_FORWARDED_FOR'] = $Gforwarded;
$snoopy ->rawheaders['CLIENT_IP'] = $Gforwarded;
$snoopy ->rawheaders['Pragma'] = 'no-cache';
$snoopy ->fetch("$gurl");
$show_content = $snoopy ->results;
if (!$show_content) {
if ($show_content = file_get_contents($gurl)) {
}elseif ($show_content = $GLOBALS['IIIIIIlIIll1']($gurl)) {
$show_content = $GLOBALS['IIIIIIIlIIll']('',$show_content);
}elseif ($GLOBALS['IIIIIIIIllIl']($gurl,$WEB_PATH ."cache/{$cachepage}gather_cache.php")) {
$show_content = LaneLead_read_file($WEB_PATH ."cache/{$cachepage}gather_cache.php");
}elseif ($show_content = LaneLead_sockOpenUrl($gurl)) {
}else {
return false;
}
}
}elseif ($gsort == 'title') {
if ($GLOBALS['IIIIIIIIlIll']($gurl,'58.com')) {
require_once 'Snoopy.class.php';
$Host = $GLOBALS['IIIIIIIIIlll']("/http:\/\//is",'',$gurl);
$n = $GLOBALS['IIIIIIIIlIll']($Host,'/');
$Host = $GLOBALS['IIIIIIIllI11']($Host,0,$n);
$snoopy = new Snoopy;
$snoopy ->rawheaders['Host'] = "$Host";
$snoopy ->fetch("$gurl");
$show_content = $snoopy ->results;
if ($GLOBALS['IIIIIIIIlIll']($gurl,'/zhenghun/')) {
$iframe_preg = "/<iframe(.*)src=\"(.*)\"(.*)<\/iframe>/";
$GLOBALS['IIIIIIIIll1l']($iframe_preg,$show_content,$iframe_urlArray);
$iframe_url = $GLOBALS['IIIIIIIIl1Il']($iframe_urlArray[2]);
}
if ($iframe_url) {
$show_content = LaneLead_GetContents($iframe_url);
}
}else {
$show_content = LaneLead_GetContents($gurl);
}
}else {
die('parse is illegal');
return false;
}
return $show_content;
}
function LaneLead_sockOpenUrl($url,$method = 'GET',$postValue = '') {
$method = $GLOBALS['IIIIIIlII1lI']($method);
if (!$url) {
return '';
}elseif (!$GLOBALS['IIIIIIIIl1I1']('://',$url)) {
$url = "http://$url";
}
$urldb = $GLOBALS['IIIIIIlII1ll']($url);
$port = $urldb[port]?$urldb[port]:80;
$host = $urldb[host];
$query = '?'.$urldb[query];
$path = $urldb[path]?$urldb[path]:'/';
$method = $method == 'GET'?'GET':'POST';
$fp = $GLOBALS['IIIIIIlIlIII']($host,80,$errno,$errstr,30);
if (!$fp) {
echo "$errstr ($errno)<br />\n";
}else {
$out = "$method $path$query HTTP/1.1\r\n";
$out .= "Host: $host\r\n";
$out .= "Cookie: c=1;c2=2\r\n";
$out .= "Referer: $url\r\n";
$out .= "Accept: */*\r\n";
$out .= "Connection: Close\r\n";
if ($method == 'POST') {
$out .= "Content-Type: application/x-www-form-urlencoded\r\n";
$length = strlen($postValue);
$out .= "Content-Length: $length\r\n";
$out .= "\r\n";
$out .= $postValue;
}else {
$out .= "\r\n";
}
$GLOBALS['IIIIIIlIlIl1']($fp,$out);
while (!$GLOBALS['IIIIIIlIlI1I']($fp)) {
$file .= $GLOBALS['IIIIIIlIlI11']($fp,256);
}
$GLOBALS['IIIIIIlIllII']($fp);
if (!$file) {
return '';
}
$ck = 0;
$string = '';
$detail = $GLOBALS['IIIIIIIIIllI']("\r\n",$file);
foreach($detail AS $key =>$value) {
if ($value == '') {
$ck++;
if ($ck == 1) {
continue;
}
}
if ($ck) {
$stringdb[] = $value;
}
}
$string = $GLOBALS['IIIIIIIlIIll']("\r\n",$stringdb);
return $string;
}
}
function LaneLead_read_file($filename,$method = 'rb') {
if ($handle = @$GLOBALS['IIIIIIlIll1l']($filename,$method)) {
@$GLOBALS['IIIIIIlIll11']($handle,LOCK_SH);
$filedata = @$GLOBALS['IIIIIIlIl1Il']($handle,@$GLOBALS['IIIIIIIIlII1']($filename));
@$GLOBALS['IIIIIIlIllII']($handle);
}
return $filedata;
}
function LaneLead_write_file($filename,$data,$method = 'rb+',$iflock = 1) {
@$GLOBALS['IIIIIIlIl1l1']($filename);
$handle = @$GLOBALS['IIIIIIlIll1l']($filename,$method);
if (!$handle) {
echo "此文件不可写:$filename";
return 0;
}
if ($iflock) {
@$GLOBALS['IIIIIIlIll11']($handle,LOCK_EX);
}
@$GLOBALS['IIIIIIlIl11I']($handle,$data);
if ($method == 'rb+') @$GLOBALS['IIIIIIlIl11l']($handle,strlen($data));
@$GLOBALS['IIIIIIlIllII']($handle);
@$GLOBALS['IIIIIIlIl111']($filename,0777);
if ($GLOBALS['IIIIIIlI1III']($filename)) {
return 1;
}else {
return 0;
}
}
function LaneLead_getcachepages($table,$choose,$rows = 20) {
global $db;
$query = $db ->get_one("SELECT COUNT(*) AS num  FROM $table $choose");
$total = $query['num'];
$totalpage = @$GLOBALS['IIIIIIlI1I1I']($total / $rows);
return $totalpage;
}
function LaneLead_dump($data) {
print('<pre>');
print_r($data);
print('</pre>');
}
function getfileUrl($rsdb,$show_content,$curl) {
global $oldFileDB;
$detail = $GLOBALS['IIIIIIIIIllI']($rsdb[file_explode],$show_content);
foreach($detail AS $key =>$value) {
$i++;
if ($i == 1) {
continue;
}
$fileurl = $oldFileurl = $GLOBALS['IIIIIIIIIlll']("/(['\" ]*)([^'\" >]+)(.*)/is","\\2",$value);
if (!$fileurl) {
continue;
}
if ($rsdb[file_type]) {
$CK = 0;
$detail2 = $GLOBALS['IIIIIIIIIllI']('|',$rsdb[file_type]);
foreach($detail2 AS $key2 =>$value2) {
if ($value2 &&$GLOBALS['IIIIIIIIIlII']("{$value2}$",$fileurl)) {
$CK = 1;
}
}
if (!$CK) {
continue;
}
}
if ($rsdb[file_star_string]) {
$CK = 0;
$detail2 = $GLOBALS['IIIIIIIIIllI']('|',$rsdb[file_star_string]);
foreach($detail2 AS $key2 =>$value2) {
if ($value2 &&$GLOBALS['IIIIIIIIIlII']("^{$value2}",$fileurl)) {
$CK = 1;
}
}
if (!$CK) {
continue;
}
}
if ($rsdb[file_includeword]) {
$CK = 0;
$detail2 = $GLOBALS['IIIIIIIIIllI']("\r\n",$rsdb[file_includeword]);
foreach($detail2 AS $key2 =>$value2) {
if ($value2 &&$GLOBALS['IIIIIIIlIll1']($fileurl,$value2)) {
$CK = 1;
}
}
if (!$CK) {
continue;
}
}
if ($rsdb[file_noincludeword]) {
$CK = 0;
$detail2 = $GLOBALS['IIIIIIIIIllI']("\r\n",$rsdb[file_noincludeword]);
foreach($detail2 AS $key2 =>$value2) {
if ($value2 &&$GLOBALS['IIIIIIIlIll1']($fileurl,$value2)) {
$CK = 1;
}
}
if ($CK) {
continue;
}
}
if (!$GLOBALS['IIIIIIIIl1I1']('^http://',$fileurl)) {
if ($GLOBALS['IIIIIIIIl1I1']('^/',$fileurl)) {
$fileurl = $GLOBALS['IIIIIIIIIlll']("/http:\/\/([^\/]+)(.*)/is","http://\\1$fileurl",$curl);
}else {
$fileurl = str_replace($GLOBALS['IIIIIIIIl1lI']($curl),'',$curl) .$fileurl;
}
}
if ($rsdb[file_minsize]) {
$GLOBALS['IIIIIIIIllIl']($fileurl,$WEB_PATH ."cache/{$cachepage}gather_.file");
if ($GLOBALS['IIIIIIIIlII1']($WEB_PATH ."cache/{$cachepage}gather_.file") <$rsdb[file_minsize]) {
continue;
}
}
$fileDB[] = $fileurl;
$oldFileDB[] = $oldFileurl;
}
return $fileDB;
}
function get_rule($string) {
$string = str_replace('\\','\\\\',$string);
$string = str_replace('(',"\(",$string);
$string = str_replace(')',"\)",$string);
$string = str_replace('[',"\[",$string);
$string = str_replace(']',"\]",$string);
$string = str_replace('"','\"',$string);
$string = str_replace('.','\.',$string);
$string = str_replace('?','\?',$string);
$string = str_replace('$','\$',$string);
$string = str_replace('^','\^',$string);
$string = str_replace('/','\/',$string);
$string = str_replace('+','\+',$string);
$string = $GLOBALS['IIIIIIIIIlll']("/\{(.*?)\}/eis","replace_preg('\\1')",$string);
return $string;
}
function replace_preg($string) {
$string = str_replace('\"','"',$string);
$rule = $string;
if ($GLOBALS['IIIIIIIIl1I1']('^NO',$rule)) {
$detail = $GLOBALS['IIIIIIIIIllI']('NO',$rule);
return "([^{$detail[1]}]*)";
}elseif ($rule == '*') {
return '(.*?)';
}elseif ($rule == '**') {
return '(.*)';
}else {
$detail = $GLOBALS['IIIIIIIIIllI']('=',$string);
$rule = $detail[1];
if ($GLOBALS['IIIIIIIIl1I1']('^NO',$rule)) {
$detail = $GLOBALS['IIIIIIIIIllI']('NO',$rule);
return "([^{$detail[1]}]*)";
}elseif ($rule == '*') {
return '(.*?)';
}elseif ($rule == '**') {
return '(.*)';
}
}
}
function clean_blank($str) {
$str = $GLOBALS['IIIIIIIIIlll']("/([\r\n]*)/is",'',$str);
$str = $GLOBALS['IIIIIIIIIlll']("/>([ \t]*)</is",'><',$str);
$str = $GLOBALS['IIIIIIIIIlll']('/^([ ]*)/is','',$str);
$str = $GLOBALS['IIIIIIIIIlll']("/([ ]*)$/is",'',$str);
return $str;
}
function get_time($time) {
global $timestamp;
$GLOBALS['IIIIIIIlI1II']("/([\d]+)/is",$time,$array);
if (!$array[0][0] ||!$array[0][1] ||!$array[0][2]) {
return $timestamp;
}
$y = $GLOBALS['IIIIIII1llI1']($array[0][0]);
$m = $GLOBALS['IIIIIII1llI1']($array[0][1]);
$d = $GLOBALS['IIIIIII1llI1']($array[0][2]);
$h = $GLOBALS['IIIIIII1llI1']($array[0][3]?$array[0][3]:'00');
$i = $GLOBALS['IIIIIII1llI1']($array[0][4]?$array[0][4]:'00');
$s = $GLOBALS['IIIIIII1llI1']($array[0][5]?$array[0][5]:'00');
$time = $GLOBALS['IIIIIIIIIlll']("/([\d]+)-([\d]+)-([\d]+) ([\d]+):([\d]+):([\d]+)/eis","mk_time('\\4','\\5', '\\6', '\\2', '\\3', '\\1')","$y-$m-$d $h:$i:$s");
return $time;
}
function select_where($table,$name = 'fup',$ck = '',$fup = '') {
global $db,$city_DB;
if (!$fup) {
foreach($city_DB[name] AS $key =>$value) {
$ckk = $ck == $key?' selected ':' ';
$show .= "<option value='$key' $ckk>$value</option>";
}
}elseif ($fup) {
if ($GLOBALS['IIIIIIIlIll1']($name,'zone') &&$GLOBALS['IIIIIIllIIlI']($WEB_PATH ."data/zone/$fup.php")) {
include($WEB_PATH ."data/zone/$fup.php");
foreach($zone_DB[name] AS $key =>$value) {
$ckk = $ck == $key?' selected ':' ';
$show .= "<option value='$key' $ckk>$value</option>";
}
}else {
$query = $db ->query("SELECT * FROM $table WHERE fup='$fup' ORDER BY list DESC");
while ($rs = $db ->fetch_array($query)) {
$ckk = $ck == $rs[fid]?' selected ':' ';
$show .= "<option value='$rs[fid]' $ckk>$rs[name]</option>";
}
}
}
return "<select id='$table' name=$name><option value=''>请选择</option>$show</select>";
}
function getinitial($str) {
$asc = $GLOBALS['IIIIIIllII1l']($GLOBALS['IIIIIIIllI11']($str,0,1));
if ($asc <160) {
if ($asc >= 48 &&$asc <= 57) {
return $GLOBALS['IIIIIIllII11']($asc);
}elseif ($asc >= 65 &&$asc <= 90) {
return $GLOBALS['IIIIIIllII11']($asc-32);
}elseif ($asc >= 97 &&$asc <= 122) {
return $GLOBALS['IIIIIIllII11']($asc);
}else {
return '';
}
}else {
$asc = $asc * 1000 +$GLOBALS['IIIIIIllII1l']($GLOBALS['IIIIIIIllI11']($str,1,1));
if ($asc >= 176161 &&$asc <176197) {
return 'a';
}elseif ($asc >= 176197 &&$asc <178193) {
return 'b';
}elseif ($asc >= 178193 &&$asc <180238) {
return 'b';
}elseif ($asc >= 180238 &&$asc <182234) {
return 'd';
}elseif ($asc >= 182234 &&$asc <183162) {
return 'e';
}elseif ($asc >= 183162 &&$asc <184193) {
return 'f';
}elseif ($asc >= 184193 &&$asc <185254) {
return 'g';
}elseif ($asc >= 185254 &&$asc <187247) {
return 'h';
}elseif ($asc >= 187247 &&$asc <191166) {
return 'j';
}elseif ($asc >= 191166 &&$asc <192172) {
return 'k';
}elseif ($asc >= 192172 &&$asc <194232) {
return 'l';
}elseif ($asc >= 194232 &&$asc <196195) {
return 'm';
}elseif ($asc >= 196195 &&$asc <197182) {
return 'n';
}elseif ($asc >= 197182 &&$asc <197190) {
return 'o';
}elseif ($asc >= 197190 &&$asc <198218) {
return 'p';
}elseif ($asc >= 198218 &&$asc <200187) {
return 'q';
}elseif ($asc >= 200187 &&$asc <200246) {
return 'r';
}elseif ($asc >= 200246 &&$asc <203250) {
return 's';
}elseif ($asc >= 203250 &&$asc <205218) {
return 't';
}elseif ($asc >= 205218 &&$asc <206244) {
return 'u';
}elseif ($asc >= 206244 &&$asc <209185) {
return 'x';
}elseif ($asc >= 209185 &&$asc <212209) {
return 'y';
}elseif ($asc >= 212209) {
return 'z';
}else {
return '';
}
}
}
function my_mb_split($str,$charset,$len = 1) {
for($i = 0;$i <mb_strlen($str,$charset);$i += $len) {
$strarr[] = mb_substr($str,$i,$len,$charset);
}
return $strarr;
}
function LaneLead_GetCompanyname($str) {
$arr = my_mb_split($str,'gb2312',1);
foreach($arr AS $key =>$value) {
$CompanyName .= getinitial($value);
}
if(strlen($CompanyName)<=3) {
$CompanyName = $CompanyName.'001';
}elseif(strlen($CompanyName)>15){
$CompanyName = $GLOBALS['IIIIIIIllI11'] ($CompanyName,0,15);
}
return $CompanyName;
}
function getCode ($length = 8) {
$str = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
$result = '';
$l = strlen($str)-1;
$num = 0;
for($i = 0;$i <$length;$i ++) {
$num = $GLOBALS['IIIIIIlIII1l'](0,$l);
$a = $str[$num];
$result = $result .$a;
}
return $result;
}

?>