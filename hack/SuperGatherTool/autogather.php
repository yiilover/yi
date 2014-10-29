<?php
$IIIIIIIl1l1I='sleep';$IIIIIIIl1ll1='flush';$IIIIIIIl1lll='dirname';$IIIIIIIIllIl='copy';$IIIIIIIl1lIl='strrchr';$IIIIIIIIlI1I='is_dir';$IIIIIIIII1II='is_array';$IIIIIIIll1I1='array_reverse';$IIIIIIIlll11='count';$IIIIIIII1l1I='unserialize';$IIIIIIIIl1lI='basename';$IIIIIIIllI11='substr';$IIIIIIIIIlll='preg_replace';$IIIIIIIIl1Il='trim';$IIIIIIII11II='addslashes';$IIIIIIIIl1I1='ereg';$IIIIIIIlI1II='preg_match_all';$IIIIIIIlIll1='strstr';$IIIIIIIlIIll='implode';$IIIIIIIIIllI='explode';$IIIIIIII11I1='set_time_limit';
!function_exists('html') &&exit('ERR');
$GLOBALS['IIIIIIII11I1'](0);
require_once ('config.php');
require_once ('inc/system.function.php');
unset($SQL);
if ($gatherid) {
$SQL = " AND id in ($gatherid) ";
}
if ($gfid) {
$SQL = " AND fid in ($gfid) ";
}
$query = $db ->query("SELECT * FROM {$pre}sgt_grule WHERE ifauto=1 $SQL");
while ($rsdb = $db ->fetch_array($query)) {
$id = $rsdb[id];
unset($allurldb,$urldb,$UT,$htmlcode);
if ($rsdb[listmoreurl]) {
$detail = $GLOBALS['IIIIIIIIIllI']("\r\n",$rsdb[listmoreurl]);
foreach($detail AS $key =>$value) {
$allurldb[] = "\$urldb[]='$value';";
}
$allurl = $GLOBALS['IIIIIIIlIIll']("\r\n",$allurldb);
}else {
$rsdb[page_step] ||$rsdb[page_step] = 1;
for($i = $rsdb[page_begin];$i <= $rsdb[page_end];$i++) {
if ($rsdb[page_begin] == 0) {
$II = ($i-1) * $rsdb[page_step];
}else {
$II = ($i-1) * $rsdb[page_step] +1;
}
$value = str_replace('[page]',"$II",$rsdb[listurl]);
if ($i == 1 &&$rsdb[firstpage]) {
$value = $rsdb[firstpage];
}
$allurldb[] = "\$urldb[]='$value';";
}
$allurl = $GLOBALS['IIIIIIIlIIll']("\r\n",$allurldb);
}
write_file($WEB_PATH ."cache/{$cachepage}gather_morepage.php","<?php\r\n".$allurl);
write_file($WEB_PATH ."cache/{$cachepage}gather_title.php","<?php\r\n");
if ($rsdb[list_begin_preg]) {
write_file($WEB_PATH ."cache/{$cachepage}gather_list.begin_preg.php","<?php\r\n$rsdb[list_begin_preg]");
}
if ($rsdb[list_end_preg]) {
write_file($WEB_PATH ."cache/{$cachepage}gather_list.end_preg.php","<?php\r\n$rsdb[list_end_preg]");
}
if ($rsdb[show_begin_preg]) {
write_file($WEB_PATH ."cache/{$cachepage}gather_show.begin_preg.php","<?php\r\n$rsdb[show_begin_preg]");
}
if ($rsdb[show_end_preg]) {
write_file($WEB_PATH ."cache/{$cachepage}gather_show.end_preg.php","<?php\r\n$rsdb[show_end_preg]");
}
if ($rsdb[show_endfile_preg]) {
write_file($WEB_PATH ."cache/{$cachepage}gather_show.endfile_preg.php","<?php\r\n$rsdb[show_endfile_preg]");
}
@include($WEB_PATH ."cache/{$cachepage}gather_morepage.php");
foreach($urldb AS $page =>$listurl) {
$code = LaneLead_GetContents($listurl,$gsort = 'title');
if (!$code) {
$db ->query("UPDATE {$pre}sgt_grule SET  lastgathertime='$timestamp',lastgatherstatus=0,lastgathernum=0 WHERE id='$id'");
exit;
}
if ($rsdb[charset_type] == 1) {
require_once($WEB_PATH .'inc/class.chinese.php');
$cnvert = new Chinese('UTF8','GB2312',$code,$WEB_PATH .'./inc/gbkcode/');
$code = $cnvert ->ConvertIT();
}
if ($rsdb[list_begin_preg]) {
$htmlcode = $code;
include($WEB_PATH ."cache/{$cachepage}gather_list.begin_preg.php");
$code = $htmlcode;
}
if ($rsdb[list_begin_code]) {
$code = $GLOBALS['IIIIIIIlIll1']($code,$rsdb[list_begin_code]);
}
if ($rsdb[list_end_code]) {
$end_content = $GLOBALS['IIIIIIIlIll1']($code,$rsdb[list_end_code]);
$code = str_replace($end_content,'',$code);
}
if ($rsdb[title_replace_word]) {
$detail = $GLOBALS['IIIIIIIIIllI']("\r\n",$rsdb[title_replace_word]);
foreach($detail AS $key =>$value) {
list($oldword,$newword) = $GLOBALS['IIIIIIIIIllI']('|',$value);
$code = str_replace($oldword,$newword,$code);
}
}
if ($rsdb[title_rule]) {
$rsdb[title_rule] = clean_blank($rsdb[title_rule]);
$code = clean_blank($code);
$GLOBALS['IIIIIIIlI1II']("/\{(.*?)\}/is",$rsdb[title_rule],$array);
foreach($array[1] AS $key =>$value) {
if (!$GLOBALS['IIIIIIIIl1I1']('^NO',$value) &&!$GLOBALS['IIIIIIIIl1I1']("^\*",$value)) {
$detail = $GLOBALS['IIIIIIIIIllI']('=',$value);
$ruledb[++$key] = $detail[0];
}
}
$rule = get_rule($rsdb[title_rule]);
$GLOBALS['IIIIIIIlI1II']("/$rule/is",$code,$array2);
foreach($ruledb AS $key =>$value) {
foreach($array2[$key] AS $key2 =>$value2) {
$value2 = str_replace("\\",'-',$value2);
$listdb[$value][] = $GLOBALS['IIIIIIII11II'](strip_tags($value2,''));
}
}
$detail_content = $listdb[url];
}else {
$code = str_replace('HREF=','href=',$code);
$code = str_replace('</A>','</a>',$code);
$code = str_replace("href='",'href=',$code);
$code = str_replace('href="','href=',$code);
$detail_content = $GLOBALS['IIIIIIIIIllI']('href=',$code);
}
unset($i,$_url,$_title);
foreach($detail_content AS $key_content =>$value_content) {
if ($rsdb[title_rule]) {
$url = $value_content;
$title = $GLOBALS['IIIIIIIIl1Il']($listdb[title][$key_content]);
$picurl = $listdb[picurl][$key_content];
}else {
if ($key_content == 0) {
continue;
}
$url = $GLOBALS['IIIIIIIIIlll']("/([^'\" >]+)(.*)/is","\\1",$value_content);
$s1_title = $GLOBALS['IIIIIIIlIll1']($value_content,'>');
$s2_title = $GLOBALS['IIIIIIIlIll1']($value_content,'</a>');
$s3_title = str_replace($s2_title,'',$s1_title);
$title = str_replace('>','',$s3_title);
$title = $GLOBALS['IIIIIIIllI11']($s3_title,1,strlen($s3_title)-1);
$title = $GLOBALS['IIIIIIIIIlll']('/<([^<>]+)>(.*)<([^<>]+)>/is',"\\2",$title);
}
if ($rsdb[link_noinclude_word]) {
$detail = $GLOBALS['IIIIIIIIIllI']("\r\n",$rsdb[link_noinclude_word]);
foreach($detail AS $key =>$value) {
if (!$value) {
continue;
}
if ($GLOBALS['IIIIIIIlIll1']($title,$value) ||$GLOBALS['IIIIIIIlIll1']($url,$value)) {
unset($url,$title);
}
}
}
if ($rsdb[link_include_word]) {
$detail = $GLOBALS['IIIIIIIIIllI']("\r\n",$rsdb[link_include_word]);
foreach($detail AS $key =>$value) {
if (!$value) {
continue;
}
if (!$GLOBALS['IIIIIIIlIll1']($url,$value)) {
unset($url,$title);
}
}
}
if ($rsdb[title_minleng]) {
if (strlen($title) <$rsdb[title_minleng] +1) {
unset($url,$title);
}
}
if ($rsdb[link_replace_word]) {
$__detail = $GLOBALS['IIIIIIIIIllI']("\r\n",$rsdb[link_replace_word]);
foreach($__detail AS $__key =>$__value) {
$__de = $GLOBALS['IIIIIIIIIllI']('|',$__value);
$url = str_replace($__de[0],$__de[1],$url);
}
}
if ($url &&$title) {
if (!$GLOBALS['IIIIIIIIl1I1']('://',$url)) {
if ($GLOBALS['IIIIIIIIl1I1']('^/',$url)) {
$url = $GLOBALS['IIIIIIIIIlll']("/http:\/\/([^\/]+)(.*)/is","http://\\1$url",$listurl);
}else {
$url = ($GLOBALS['IIIIIIIIl1I1']("\/$",$listurl)?$listurl:str_replace($GLOBALS['IIIIIIIIl1lI']($listurl),'',$listurl)) .$url;
}
}
if ($picurl &&!$GLOBALS['IIIIIIIIl1I1']('://',$picurl)) {
if ($GLOBALS['IIIIIIIIl1I1']('^/',$picurl)) {
$picurl = $GLOBALS['IIIIIIIIIlll']("/http:\/\/([^\/]+)(.*)/is","http://\\1$picurl",$listurl);
}else {
$picurl = str_replace($GLOBALS['IIIIIIIIl1lI']($listurl),'',$listurl) .$picurl;
}
}
$url = str_replace("'",'&#39;',$url);
$picurl = str_replace("'",'&#39;',$picurl);
$title = str_replace("'",'&#39;',$title);
$_url[] = $url;
$_title[] = $title;
if ($picurl) {
$UT[] = "\$urldb[]='$url\t$title@@$picurl';";
}else {
$UT[] = "\$urldb[]='$url\t$title';";
}
}
}
$writefile = $GLOBALS['IIIIIIIlIIll']("\r\n",$UT);
if ($rsdb[list_end_preg]) {
$htmlcode = $writefile;
include($WEB_PATH ."cache/{$cachepage}gather_list.end_preg.php");
$writefile = $htmlcode;
}
write_file($WEB_PATH ."cache/{$cachepage}gather_title.php","\r\n".$writefile,'a');
}
unset($urldb,$UT);
include($WEB_PATH ."cache/{$cachepage}gather_title.php");
$save_rule = $rsdb[save_rule];
$save_rule = $GLOBALS['IIIIIIII1l1I']($save_rule);
$ifReverse = $save_rule[ifReverse];
$limitNum = $save_rule[limitNum]?$save_rule[limitNum]:$GLOBALS['IIIIIIIlll11']($urldb);
$k = 0;
if (!$save_rule[ifReverse]) {
$num = $GLOBALS['IIIIIIIlll11']($urldb)-1;
for($i = 0;$i <= $num;$i++) {
if ($limitNum <= $k) {
break;
}
$UT[] = "\$urldb[]='{$urldb[$i]}';";
$k++;
}
}else {
$num = $GLOBALS['IIIIIIIlll11']($urldb)-1;
for($i = $num;$i >= 0;$i--) {
if ($limitNum <= $k) {
break;
}
$UT[] = "\$urldb[]='{$urldb[$i]}';";
$k++;
}
}
$writefile = $GLOBALS['IIIIIIIlIIll']("\r\n",$GLOBALS['IIIIIIIll1I1']($UT));
write_file($WEB_PATH ."cache/{$cachepage}gather_title.php","<?php\r\n".$writefile);
unset($urldb,$page,$listurl,$failpage,$htmlcode);
@include($WEB_PATH ."cache/{$cachepage}gather_title.php");
$fixsystem = $rsdb[fixsystem];
$getfile = $save_rule[getfile];
$file_dir = $save_rule[file_dir];
$username = $save_rule[saveuname];
$fid = $save_rule[fid];
$limitNum = $save_rule[limitNum]?$save_rule[limitNum]:$GLOBALS['IIIIIIIlll11']($urldb);
$gatherok = 0;
foreach($urldb AS $page =>$listurl) {
unset($ruledb,$array2,$array,$listdb);
list($curl,$title,$morepage) = $GLOBALS['IIIIIIIIIllI']("\t",$listurl);
if (!$show_content = LaneLead_GetContents($curl)) {
$db ->query("UPDATE {$pre}sgt_grule SET  lastgathertime='$timestamp',lastgatherstatus=0,lastgathernum=0 WHERE id='$id'");
exit;
}
if ($rsdb[charset_type] == 1) {
require_once($WEB_PATH .'inc/class.chinese.php');
$cnvert = new Chinese('UTF8','GB2312',$show_content,$WEB_PATH .'./inc/gbkcode/');
$show_content = $cnvert ->ConvertIT();
}
if ($rsdb[type] == 'iframe') {
$iframeurl = $curl;
}else {
if ($rsdb[show_begin_preg]) {
$htmlcode = $show_content;
include($WEB_PATH ."cache/{$cachepage}gather_show.begin_preg.php");
$show_content = $htmlcode;
}
if ($rsdb[show_morepage] &&!$morepage) {
$i = 1;
unset($moreurl_db);
do {
$i++;
if ($rsdb[show_firstpage]) {
$nexturl = str_replace($rsdb[show_firstpage],str_replace('[page]',$i,$rsdb[show_morepage]),$curl);
}else {
$nexturl = $GLOBALS['IIIIIIIIIlll']("/(.*)([^\d]+)([\d]*)$/is","\\1\\2",$curl) .str_replace('[page]',$i,$rsdb[show_morepage]);
}
if ($i == 2 &&$rsdb[show_spe2page]) {
$tsurl = str_replace($rsdb[show_firstpage],str_replace('[page]',1,$rsdb[show_morepage]),$curl);
if ($GLOBALS['IIIIIIIlIll1']($show_content,$GLOBALS['IIIIIIIIl1lI']($tsurl))) {
$moreurl_db[$page][] = "$tsurl\t$title\t1";
}
}
if ($GLOBALS['IIIIIIIlIll1']($show_content,$GLOBALS['IIIIIIIIl1lI']($nexturl))) {
$moreurl_db[$page][] = "$nexturl\t$title\t$i";
}else {
$i = 0;
}
}while ($i != 0);
if ($GLOBALS['IIIIIIIII1II']($moreurl_db[$page])) {
foreach($urldb AS $key =>$value) {
$_urlDB[] = "\$urldb[]='$value';";
if ($page == $key &&$GLOBALS['IIIIIIIII1II']($moreurl_db[$key])) {
foreach($moreurl_db[$key] AS $key2 =>$value2) {
$_urlDB[] = "\$urldb[]='$value2';";
}
}
}
$write_file = $GLOBALS['IIIIIIIlIIll']("\r\n",$_urlDB);
write_file($WEB_PATH ."cache/{$cachepage}gather_title.php","<?php\r\n$write_file");
unset($urldb);
include($WEB_PATH ."cache/{$cachepage}gather_title.php");
}
}
if ($rsdb[show_begin_code]) {
$show_content = $GLOBALS['IIIIIIIlIll1']($show_content,$rsdb[show_begin_code]);
$num_1 = strlen($rsdb[show_begin_code]);
$num_2 = strlen($show_content);
$show_content = $GLOBALS['IIIIIIIllI11']($show_content,$num_1,$num_2);
}
if ($rsdb[show_end_code]) {
$end_content = $GLOBALS['IIIIIIIlIll1']($show_content,$rsdb[show_end_code]);
$show_content = str_replace($end_content,'',$show_content);
}
if ($rsdb[content_rule]) {
$rsdb[content_rule] = clean_blank($rsdb[content_rule]);
$show_content = clean_blank($show_content);
$GLOBALS['IIIIIIIlI1II']("/\{(.*?)\}/is",$rsdb[content_rule],$array);
foreach($array[1] AS $key =>$value) {
if (!$GLOBALS['IIIIIIIIl1I1']('^NO',$value) &&!$GLOBALS['IIIIIIIIl1I1']("^\*",$value)) {
$detail = $GLOBALS['IIIIIIIIIllI']('=',$value);
$ruledb[++$key] = $detail[0];
}
}
$rule = get_rule($rsdb[content_rule]);
$GLOBALS['IIIIIIIlI1II']("/$rule/is",$show_content,$array2);
foreach($ruledb AS $key =>$value) {
foreach($array2[$key] AS $key2 =>$value2) {
$listdb[$value][] = $value2;
}
}
foreach($listdb AS $key =>$value) {
$$key = $value[0];
$gather_module_valeDB[$key] = $value[0];
}
if ($content) {
$show_content = $content;
}
elseif ($content1) {
$show_content = $content1 .$content2;
}
}
if ($rsdb[show_replace_word]) {
$detail = $GLOBALS['IIIIIIIIIllI']("\r\n",$rsdb[show_replace_word]);
foreach($detail AS $key =>$value) {
list($oldword,$newword) = $GLOBALS['IIIIIIIIIllI']('|',$value);
$show_content = str_replace($oldword,$newword,$show_content);
}
}
if ($rsdb[show_end_preg]) {
$htmlcode = $show_content;
include($WEB_PATH ."cache/{$cachepage}gather_show.end_preg.php");
$show_content = $htmlcode;
}
}
if (!$rsdb[file_explode]) {
$rsdb[file_explode] = 'src=';
$show_content = str_replace('SRC=','src=',$show_content);
if (!$rsdb[file_type] &&$rsdb[fixsystem] == 'article') {
$rsdb[file_type] = 'jpg|gif|png';
}
}
$Filedb = getfileUrl($rsdb,$show_content,$curl);
if ($rsdb[show_endfile_preg]) {
$htmlcode = $show_content;
include($WEB_PATH ."cache/{$cachepage}gather_show.endfile_preg.php");
$show_content = $htmlcode;
}
if ($Filedb &&$getfile &&$fid) {
$dir_id = $file_dir?$file_dir:"article/$fid";
if (!$GLOBALS['IIIIIIIIlI1I']($WEB_PATH ."$webdb[updir]/$dir_id")) {
makepath($WEB_PATH ."$webdb[updir]/$dir_id");
}
if ($getfile) {
foreach($Filedb AS $key2 =>$fileurl) {
$Filedb[$key2] = "$dir_id/$lfjdb[uid]_".rands(6) .$GLOBALS['IIIIIIIIl1lI']($fileurl);
if ($GLOBALS['IIIIIIIlIll1']($Filedb[$key2],'?')) {
$Filedb[$key2] = str_replace('?','_____',$Filedb[$key2]);
}
$file_Type = $GLOBALS['IIIIIIIl1lIl']($Filedb[$key2],'.');
if (strlen($file_Type) >5) {
$Filedb[$key2] .= '.rar';
}
if ($getfilecontent = sockOpenUrl($fileurl)) {
write_file($WEB_PATH ."$webdb[updir]/{$Filedb[$key2]}",$getfilecontent);
}else {
$GLOBALS['IIIIIIIIllIl']($fileurl,$WEB_PATH ."$webdb[updir]/{$Filedb[$key2]}");
}
}
}
}
$detail_title = $GLOBALS['IIIIIIIIIllI']('@@',$title);
if ($detail_title[1] == '') {
$title = $detail_title[0];
}
include($GLOBALS['IIIIIIIl1lll'](__FILE__) .'/inc/system.filter.php');
$content = $show_content;
$fixsystem = $rsdb[fixsystem];
if (!$fixsystem ||!file_exists($GLOBALS['IIIIIIIl1lll'](__FILE__) ."/inc/$fixsystem.system.php")) {
$fixsystem = 'article';
}
if ($gather_module_valeDB) {
include($GLOBALS['IIIIIIIl1lll'](__FILE__) ."/inc/$fixsystem.system.php");
$gatherok = 1;
}else {
$failpage++;
}
$GLOBALS['IIIIIIIl1ll1']();
$GLOBALS['IIIIIIIl1l1I'](1);
}
if ($gatherok) {
$successNum = $limitNum -$failpage;
$db ->query("UPDATE {$pre}sgt_grule SET  lastgathertime='$timestamp',lastgatherstatus=1,lastgathernum='$successNum' WHERE id='$id'");
}
}

?>