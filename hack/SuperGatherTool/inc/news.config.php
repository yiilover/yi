<?php 
// newsÎÄÕÂ×ÊÑ¶Ä£¿é - ²É¼¯ÅäÖÃÎÄ¼þ
// ¹¦ÄÜ£ºÆë²© newsÎÄÕÂ×ÊÑ¶Ä£¿é µÄ²É¼¯ÅäÖÃ³ÌÐò£¬¿ÉÒÔÁé»î´¦Àí²É¼¯µÄÄÚÈÝ
// ×÷Õß£ºÉîÀ¶  QQ£º 570713592  ÍøÖ·£º http://www.lanelead.com  ÂÛÌ³£º http://bbs.lanelead.com
// ¸üÐÂÈÕÆÚ£º 2011-7-25

//´¦ÀíÒ»Ð©×Ö¶Î  ¸ß¼¶¹æÔò¿ÉÒÔÔÚ´Ë´¦ÀíÒ»Ð©ÁÙÊ±±äÁ¿»ò¶Ô²É¼¯µÄÄÚÈÝ×ö¸ß¼¶´¦Àí£¬ÒÔÂú×ã¸üÓÐÐ§¡¢ÓÐÕë¶ÔÐÔµÄ²É¼¯
$title = str_replace("€€", "©O", $title);
$content = str_replace("€€", "©O", $content);

//¶Ô²É¼¯µÄµç»°×ö¾À´í´¦Àí£¬·ÀÖ¹³öÏÖÈë¿â´íÎó
if (strlen($telephone) >= 30) {
	$telephone = '';
} 

//×Ô¶¨ÒåÒ»Ð©×Ö¶ÎÄ¬ÈÏÖµ£º Èç¹ûÃ»ÓÐ¶¨Òå¸Ã×Ö¶Î²É¼¯£¬ÔòÓÃÄ¬ÈÏÖµÈë¿â
$telephone = $telephone?$telephone:$userdb[telephone];

$hits = $hits ? $hits: rand(5, 200); //Ëæ»úµã»÷Êý
$hits = intval($hits); 
$onlineip = $onlineip?$onlineip : rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255); //·¢²¼Ëæ»úIP	

$author = $author?filtrate($author):$username; //²É¼¯ÎÄÕÂ×÷Õß,Èç¹ûÎª¿ÕÔòÄ¬ÈÏÎª²É¼¯ÓÃ»§
$copyfrom = $copyfrom?filtrate($copyfrom):"ÍøÂç"; //ÎÄÕÂÀ´Ô´,Èç¹ûÎª¿ÕÔòÄ¬ÈÏÀ´Ô´Îª ÍøÂç 

$posttime = $begintime = get_time($posttime); //·¢²¼Ê±¼ä
$onedaytime = "86400";
$showday = $showday?$showday: 30; //Ä¬ÈÏÓÐÐ§ÆÚÎª30Ìì
$showday = intval($showday); 
$endtime = $showday * $onedaytime + $posttime; //½áÊøÊ±¼ä ÓÐÐ§ÆÚ

$yz = $yz ? $yz : 1; //ÊÇ·ñÍ¨¹ýÉóºË·¢²¼£º 1 - Á¢¼´·¢²¼  0 - ÐèÒªÉóºË

$restags = ""; //ÉèÖÃËùÓÐ×Ö¶ÎÖÐ²»ÐèÒª¹ýÂËµÄHTML±ê¼Ç(²»°üº¬connent) ÀýÈç:$restags="<img> <p>"; ÖÐ¼äÓÃ°ë½Ç¿Õ¸ñ¼ä¸ô

?>