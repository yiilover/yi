<?php
!function_exists('html') && exit('ERR');
set_time_limit(0);
error_reporting(0);
ob_implicit_flush(1);
require_once ("config.php");
require_once ("inc/system.function.php");

if ($job == "add_title" && $Apower[sgt_grule]) {
	$link_noinclude_word = "<";
	$page_step = 1;
	$webname = "被采集的网站名称";
	$sort_fid = $Guidedb -> Select("{$pre}sgt_gsort", "fid", $fid);
	$rulepage = '0';

	hack_admin_tpl('edit_title');
} elseif ($gaction == "add_title" && $Apower[sgt_grule]) {
	if ($rulepage == 0 && !$listmoreurl) {
		showmsg("要采集的网址不能为空");
	} elseif ($rulepage && !$listurl) {
		showmsg("要采集的通用网址不能为空");
	} 
	if (!$title_rule) {
		showmsg("自定义正则语法规则不能为空");
	} elseif (!strstr($title_rule, '{url=') || !strstr($title_rule, '{title=')) {
		showmsg("请认真填写自定义正则语法");
	} 
	$fixsystem || $fixsystem = 'article';

	if (!$db -> get_one("SELECT * FROM `{$pre}sgt_grule` WHERE posttime='$posttime' ")) {
		$db -> query("INSERT INTO `{$pre}sgt_grule` ( `type` ,`fixsystem`, `filetype` , `webname` , `listurl` , `firstpage` , `page_begin` , `page_end` , `page_step` , `listmoreurl` , `link_include_word` , `link_noinclude_word` , `link_replace_word` , `title_replace_word` , `list_begin_code` , `list_end_code` , `list_begin_preg` , `list_end_preg` , `gatherthesame` , `title_minleng` , `show_end_preg` , `show_begin_code` , `show_end_code` , `show_replace_word` , `show_morepage` , `posttime` , `list`,title_rule,charset_type,fid ) 
		VALUES (
		'$type','$fixsystem','$filetype','$webname','$listurl','$firstpage','$page_begin','$page_end','$page_step','$listmoreurl','$link_include_word','$link_noinclude_word','$link_replace_word','$title_replace_word','$list_begin_code','$list_end_code','$list_begin_preg','$list_end_preg','$gatherthesame','$title_minleng','$show_end_preg','$show_begin_code','$show_end_code','$show_replace_word','$show_morepage','$posttime','$timestamp','$title_rule','$charset_type','$fid'
		)");
	} else {
		$db -> query("UPDATE `{$pre}sgt_grule` SET fixsystem='$fixsystem',webname='$webname',listurl='$listurl',firstpage='$firstpage',page_begin='$page_begin',page_end='$page_end',page_step='$page_step',listmoreurl='$listmoreurl',link_include_word='$link_include_word',link_noinclude_word='$link_noinclude_word',link_replace_word='$link_replace_word',title_replace_word='$title_replace_word',list_begin_code='$list_begin_code',list_end_code='$list_end_code',list_begin_preg='$list_begin_preg',list_end_preg='$list_end_preg',title_minleng='$title_minleng',title_rule='$title_rule',charset_type='$charset_type',fid='$fid' WHERE posttime='$posttime'");
	} 
	$rs = $db -> get_one("SELECT id FROM {$pre}sgt_grule WHERE posttime='$posttime' ");
	if ($testgather) {
		jump("正在测试采集标题,请耐心等待", "index.php?lfj=$lfj&gaction=gather_title&id=$rs[id]", 1);
	} 
	jump("继续下一步", "index.php?lfj=$lfj&job=edit_content&id=$rs[id]", 1);
} elseif ($job == "edit_title" && $Apower[sgt_grule]) {
	$rsdb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");

	$sort_fid = $Guidedb -> Select("{$pre}sgt_gsort", "fid", $rsdb[fid]);

	$rsdb[title_rule] = str_replace("&nbsp;", "&amp;nbsp;", $rsdb[title_rule]);

	@extract($rsdb);
	if ($listurl) {
		$rulepage = '1';
	} else {
		$rulepage = '0';
	} 
	$charset_typedb[intval($rsdb[charset_type])] = ' checked ';

	hack_admin_tpl('edit_title');
} elseif ($gaction == "edit_title" && $Apower[sgt_grule]) {
	$db -> query("UPDATE `{$pre}sgt_grule` SET fixsystem='$fixsystem',webname='$webname',listurl='$listurl',firstpage='$firstpage',page_begin='$page_begin',page_end='$page_end',page_step='$page_step',listmoreurl='$listmoreurl',link_include_word='$link_include_word',link_noinclude_word='$link_noinclude_word',link_replace_word='$link_replace_word',title_replace_word='$title_replace_word',list_begin_code='$list_begin_code',list_end_code='$list_end_code',list_begin_preg='$list_begin_preg',list_end_preg='$list_end_preg',title_minleng='$title_minleng',title_rule='$title_rule',charset_type='$charset_type',fid='$fid' WHERE id='$id'");
	if ($testgather) {
		jump("正在测试采集标题,请耐心等待", "index.php?lfj=$lfj&gaction=gather_title&id=$id&nextgid_page=$nextgid_page&autogather=$autogather", 1);
	} 
	if ($saveback) {
		jump("修改成功,返回采集规则列表", "index.php?lfj=$lfj&job=list", 1);
	} else {
		jump("继续下一步设置详细参数", "index.php?lfj=$lfj&job=edit_content&id=$id", 1);
	} 
} elseif ($job == "edit_content" && $Apower[sgt_grule]) {
	$rsdb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");
	$rsdb[content_rule] = str_replace("&nbsp;", "&amp;nbsp;", $rsdb[content_rule]);
	@extract($rsdb);
	$type || $type = 'article';
	$typedb[$type] = " checked ";
	$gatherthesame = intval($gatherthesame);
	$gatherthesamedb[$gatherthesame] = " checked ";
	$show_spe2page = intval($show_spe2page);
	$show_spe2pagedb[$show_spe2page] = " checked ";

	include_once(dirname(__FILE__) . "/inc/$fixsystem.assistant.php"); //导入模块说明和规则助手文件
	
	hack_admin_tpl('edit_content');
} elseif ($gaction == "edit_content" && $Apower[sgt_grule]) {
	if ($content_rule) {
		if (strstr($content_rule, "*}{*}") || strstr($content_rule, "{*}{")) {
			showmsg("不相关内容通配符与字段通配符之间,或者是两个通配符之间,必须要有HTML代码隔开");
		} 
	} 
	// 初始化采集规则配置
	$ruledb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");
	if (!$ruledb[save_rule]) {
		$save_rule[getfile] = 0; //是否文件本地化	
		$save_rule[ifReverse] = 0; //是否倒序采集
		$save_rule[limitNum] = 0; //限制采集数量	
		$save_rule[ifauto] = 1; //是否允许定时自动采集
		$save_rule[filter_iframe] = 1; //是否过滤 iframe
		$save_rule[filter_object] = 1; //是否过滤 object
		$save_rule[filter_script] = 1; //是否过滤 script
		$save_rule[filter_style] = 1; //是否过滤 style
		$save_rule[filter_font] = 1; //是否过滤 font
		$save_rule[filter_tablestyle] = 1; //是否过滤 常见表格属性
		$save_rule[filter_div] = 1; //是否过滤 div
		$save_rule[filter_span] = 1; //是否过滤 span
		$save_rule[filter_displaynone] = 1; //是否过滤 不可见元素
		$save_rule[filter_table] = 0; //是否过滤 table
		$save_rule[filter_img] = 0; //是否过滤 img
		$save_rule[filter_strong] = 0; //是否过滤 strong、b
		$save_rule[filter_a] = 1; //是否过滤 a
		$save_rule[filter_format] = 1; //是否格式化html代码
		$save_rule = addslashes(serialize($save_rule));
	} else {
		$save_rule = $ruledb[save_rule];
	} 
	$db -> query("UPDATE {$pre}sgt_grule SET type='$type',gatherthesame='$gatherthesame',show_begin_preg='$show_begin_preg',show_end_preg='$show_end_preg',show_endfile_preg='$show_endfile_preg',show_begin_code='$show_begin_code',show_end_code='$show_end_code',show_replace_word='$show_replace_word',show_morepage='$show_morepage',show_firstpage='$show_firstpage',copypic='$copypic',sort='$sort',file_type='$file_type',file_minleng='$file_minleng',file_minsize='$file_minsize',file_includeword='$file_includeword',file_noincludeword='$file_noincludeword',file_explode='$file_explode',file_picwidth='$file_picwidth',file_star_string='$file_star_string',content_rule='$content_rule',show_spe2page='$show_spe2page',save_rule='$save_rule' WHERE id='$id'");
	if ($testgather) {
		jump("请耐心等待,先采集标题,你再点击选择测试采集", "index.php?lfj=$lfj&gaction=gather_title&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&testgather=$testgather&assistant=$assistant", 1);
	} 
	if ($content_rule) {
		preg_match_all("/\{([a-z\*=]+)\}/is", $content_rule, $array);
		foreach($array[1] AS $key => $value) {
			if ($value != '*') {
				$v0 = $array[1][$key-1];
				$v1 = $array[1][$key + 1];
				if (($v0 && $v0 != '*') || ($v1 && $v1 != '*')) {
					if (($v0 && $v0 != '*')) {
						$MSG = "“{{$value}}”与“{{$v0}}”";
					} else {
						$MSG = "“{{$value}}”与“{{$v1}}”";
					} 
					if ($saveback) {
						jump("<font color=red>提醒::数据已提交,但有可能采集不成功,因为你的两个字段通配符{$MSG}之间,没有使用不相关内容通配符{*},正常情况是必须要使用的</font><br>如果你测试采集没有问题，<a href='index.php?lfj=$lfj&job=list'>点击返回采集列表</a>", "index.php?lfj=$lfj&job=list", 30);
					} else {
						jump("<font color=red>提醒::数据已提交,但有可能采集不成功,因为你的两个字段通配符{$MSG}之间,没有使用不相关内容通配符{*},正常情况是必须要使用的</font><br>如果你测试采集没有问题，<a href='index.php?lfj=$lfj&job=edit_saverule&id=$id'>继续下一步设置入库规则</a>", "index.php?lfj=$lfj&job=edit_saverule&id=$id", 30);
					} 
				} 
			} 
		} 
	} 

	if ($saveback) {
		jump("修改成功,返回采集规则列表", "index.php?lfj=$lfj&job=list", 1);
	} else {
		jump("继续下一步设置入库规则", "index.php?lfj=$lfj&job=edit_saverule&id=$id", 1);
	} 
} elseif ($job == "edit_saverule" && $Apower[sgt_grule]) {
	$ruledb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");
	@extract($ruledb);

	$save_rule = unserialize($save_rule);

	$save_getfiledb[1] = " checked "; //是否文件本地化
	$save_rule[saveuname] = $save_rule[saveuname]?$save_rule[saveuname]:$userdb[username]; //设置发布文章会员用户名
	$ifautodb[1] = " checked "; //是否允许定时自动采集
	$ifReversedb[1] = " checked "; //是否倒序采集
	$filter_iframedb[1] = " checked "; //是否过滤 iframe
	$filter_objectdb[1] = " checked "; //是否过滤 object
	$filter_scriptdb[1] = " checked "; //是否过滤 script
	$filter_styledb[1] = " checked "; //是否过滤 style
	$filter_fontdb[1] = " checked "; //是否过滤 font
	$filter_tablestyledb[1] = " checked "; //是否过滤 常见表格属性
	$filter_divdb[1] = " checked "; //是否过滤 div
	$filter_spandb[1] = " checked "; //是否过滤 span
	$filter_displaynonedb[1] = " checked "; //是否过滤 不可见元素
	$filter_tabledb[1] = " checked "; //是否过滤 table
	$filter_imgdb[1] = " checked "; //是否过滤 img
	$filter_strongdb[1] = " checked "; //是否过滤 strong、b
	$filter_adb[1] = " checked "; //是否过滤 a
	$filter_formatdb[1] = " checked "; //是否格式化html代码
	$Temp_city_fid = select_where("{$pre}city", "'postdb[city_id]'  onChange=\"choose_where('getzone',this.options[this.selectedIndex].value,'','1','')\"", $save_rule[city_id]);

	hack_admin_tpl('edit_saverule');
} elseif ($gaction == "edit_saverule" && $Apower[sgt_grule]) {
	if (!$postdb[fid]) {
		showmsg("请选择入库栏目");
	} 
	$save_rule[fid] = $postdb[fid];

	$save_rule[file_dir] = filtrate($save_rule[file_dir]); //入库文件目录                
	// 发布用户纠错处理
	if ($save_rule[saveuname]) {
		$urs = $userDB -> get_info($save_rule[saveuname], 'name');
	} 
	$save_rule[saveuname] = $urs[username]?$urs[username]:$userdb[username]; 
	// 发布详细地区
	$save_rule[city_id] = $postdb[city_id];
	$save_rule[zone_id] = $postdb[zone_id];
	$save_rule[street_id] = $postdb[street_id];

	$save_rule = addslashes(serialize($save_rule));

	$db -> query("UPDATE {$pre}sgt_grule SET  sort='$save_rule[fid]',ifauto='$ifauto',save_rule='$save_rule' WHERE id='$id'");

	if ($testgather) {
		jump("请耐心等待,先采集标题,你再点击选择测试采集", "index.php?lfj=$lfj&gaction=gather_title&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&testgather=$testgather", 1);
	} 
	if ($autogather) {
		jump("请耐心等待,采集正在进行...", "index.php?lfj=$lfj&gaction=autogather&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&testgather=$testgather", 1);
	} 

	jump("修改成功", "index.php?lfj=$lfj&job=list", 1);
} elseif ($gaction == "gather_title" && $Apower[sgt_grule]) {
	unset($htmlcode);
	$rsdb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");
	$fixsystem = $rsdb[fixsystem]; //入库模块
	$page = intval($page);
	if (!$page) {
		if ($rsdb[listmoreurl]) {
			$detail = explode("\r\n", $rsdb[listmoreurl]);
			foreach($detail AS $key => $value) {
				$allurldb[] = "\$urldb[]='$value';";
			} 
			$allurl = implode("\r\n", $allurldb);
		} else {
			$rsdb[page_step] || $rsdb[page_step] = 1;

			for($i = $rsdb[page_begin];$i <= $rsdb[page_end];$i++) {
				if ($rsdb[page_begin] == 0) {
					$II = ($i-1) * $rsdb[page_step];
				} else {
					$II = ($i-1) * $rsdb[page_step] + 1;
				} 

				$value = str_replace("[page]", "$II", $rsdb[listurl]);
				if ($i == 1 && $rsdb[firstpage]) {
					$value = $rsdb[firstpage];
				} 
				$allurldb[] = "\$urldb[]='$value';";
			} //print_R($allurldb);  die($allurldb);
			$allurl = implode("\r\n", $allurldb);
		} 
		write_file($WEB_PATH . "cache/{$cachepage}gather_morepage.php", "<?php\r\n" . $allurl);
		write_file($WEB_PATH . "cache/{$cachepage}gather_title.php", "<?php\r\n");
		if ($rsdb[list_begin_preg]) {
			write_file($WEB_PATH . "cache/{$cachepage}gather_list.begin_preg.php", "<?php\r\n$rsdb[list_begin_preg]");
		} 
		if ($rsdb[list_end_preg]) {
			write_file($WEB_PATH . "cache/{$cachepage}gather_list.end_preg.php", "<?php\r\n$rsdb[list_end_preg]");
		} 
		if ($rsdb[show_begin_preg]) {
			write_file($WEB_PATH . "cache/{$cachepage}gather_show.begin_preg.php", "<?php\r\n$rsdb[show_begin_preg]");
		} 
		if ($rsdb[show_end_preg]) {
			write_file($WEB_PATH . "cache/{$cachepage}gather_show.end_preg.php", "<?php\r\n$rsdb[show_end_preg]");
		} 
		if ($rsdb[show_endfile_preg]) {
			write_file($WEB_PATH . "cache/{$cachepage}gather_show.endfile_preg.php", "<?php\r\n$rsdb[show_endfile_preg]");
		} 
	} 
	@include($WEB_PATH . "cache/{$cachepage}gather_morepage.php");
	$listurl = $urldb[$page];
	$code = LaneLead_GetContents($listurl, $gsort = "title");
	if (!$code) {
		echo("采集失败<br><br><br><br><br><br><br><br><br><br>"); 
		// exit;
	} 
	// UTF8->GBK
	if ($rsdb[charset_type] == 1) {
		require_once($WEB_PATH . "inc/class.chinese.php");
		$cnvert = new Chinese("UTF8", "GB2312", $code, $WEB_PATH . "./inc/gbkcode/");
		$code = $cnvert -> ConvertIT();
	} 
	// 开头正则
	if ($rsdb[list_begin_preg]) {
		$htmlcode = $code; //方便外部正则语句的变量比较统一
		include($WEB_PATH . "cache/{$cachepage}gather_list.begin_preg.php");
		$code = $htmlcode;
	} 
	// 截取从某段字符开始至结尾的内容
	if ($rsdb[list_begin_code]) {
		$code = strstr($code, $rsdb[list_begin_code]);
	} 
	// 去掉某段字符后面的内容
	if ($rsdb[list_end_code]) {
		$end_content = strstr($code, $rsdb[list_end_code]);
		$code = str_replace($end_content, "", $code);
	} 
	// 替换一些字符
	if ($rsdb[title_replace_word]) {
		$detail = explode("\r\n", $rsdb[title_replace_word]);
		foreach($detail AS $key => $value) {
			list($oldword, $newword) = explode("|", $value);
			$code = str_replace($oldword, $newword, $code);
		} 
	} 
	// 新增高级采集规则助手功能
	if ($assistant == 4) {
		$show_content = $code;
		include_once(dirname(__FILE__) . "/inc/$fixsystem.assistant.php");
		hack_admin_tpl('assistant');
		exit;
	} 
	// 用户自定义正则
	if ($rsdb[title_rule]) {
		// 把空白都去除,方便处理
		$rsdb[title_rule] = clean_blank($rsdb[title_rule]);
		$code = clean_blank($code); 
		// echo $code;exit;
		// 获取正则里的规则数组
		preg_match_all("/\{(.*?)\}/is", $rsdb[title_rule], $array); 
		// 获取变量
		foreach($array[1] AS $key => $value) {
			if (!ereg("^NO", $value) && !ereg("^\*", $value)) {
				$detail = explode("=", $value);
				$ruledb[++$key] = $detail[0];
			} 
		} 
		// 获取处理后能使用的规则
		$rule = get_rule($rsdb[title_rule]); 
		// 对采集的内容跟据正则进行校正
		preg_match_all("/$rule/is", $code, $array2); 
		// 获取有用的数组
		foreach($ruledb AS $key => $value) {
			foreach($array2[$key] AS $key2 => $value2) {
				$value2 = str_replace("\\", "-", $value2); // 容错处理
				$listdb[$value][] = addslashes(strip_tags($value2, "")); //标题多样采集   
				// $listdb[$value][] = $value2 ;
			} 
		} 
		// url文章地址必须要有的 进行简单容错处理
		$listdb[url] = str_replace('"', '', $listdb[url]);
		$listdb[url] = str_replace("'", '', $listdb[url]);
		$detail_content = $listdb[url];
	} else {
		$code = str_replace("HREF=", "href=", $code);
		$code = str_replace("</A>", "</a>", $code);
		$code = str_replace("href='", "href=", $code);
		$code = str_replace('href="', 'href=', $code);
		$detail_content = explode("href=", $code);
	} 
	// print_r($detail_content);exit;
	unset($i, $_url, $_title);
	foreach($detail_content AS $key_content => $value_content) {
		if ($rsdb[title_rule]) {
			$url = $value_content;
			$title = trim($listdb[title][$key_content]); //避免因空格问题取不到title
			$picurl = $listdb[picurl][$key_content];
		} else {
			if ($key_content == 0) {
				continue;
			} 
			$url = preg_replace("/([^'\" >]+)(.*)/is", "\\1", $value_content); //echo $url; die();
			$s1_title = strstr($value_content, ">");
			$s2_title = strstr($value_content, "</a>");
			$s3_title = str_replace($s2_title, "", $s1_title);
			$title = str_replace(">", "", $s3_title);
			$title = substr($s3_title, 1, strlen($s3_title)-1);
			$title = preg_replace("/<([^<>]+)>(.*)<([^<>]+)>/is", "\\2", $title);
		} 
		// 标题与URL中不能包含有的字符
		if ($rsdb[link_noinclude_word]) {
			$detail = explode("\r\n", $rsdb[link_noinclude_word]);
			foreach($detail AS $key => $value) {
				if (!$value) {
					continue;
				} 
				if (strstr($title, $value) || strstr($url, $value)) {
					unset($url, $title);
				} 
			} 
		} 
		// URL中必须包含有的字符
		if ($rsdb[link_include_word]) {
			$detail = explode("\r\n", $rsdb[link_include_word]);
			foreach($detail AS $key => $value) {
				if (!$value) {
					continue;
				} 
				if (!strstr($url, $value)) {
					unset($url, $title);
				} 
			} 
		} 
		// 标题不能小于多少字
		if ($rsdb[title_minleng]) {
			if (strlen($title) < $rsdb[title_minleng] + 1) {
				unset($url, $title);
			} 
		} 
		// 链接中的地址要替换
		if ($rsdb[link_replace_word]) {
			$__detail = explode("\r\n", $rsdb[link_replace_word]);
			foreach($__detail AS $__key => $__value) {
				$__de = explode("|", $__value);
				$url = str_replace($__de[0], $__de[1], $url);
			} 
		} 
		// 对地址的完整性进行处理
		if ($url && $title) {
			if (!ereg("://", $url)) {
				if (ereg("^/", $url)) {
					$url = preg_replace("/http:\/\/([^\/]+)(.*)/is", "http://\\1$url", $listurl);
				} else {
					$url = (ereg("\/$", $listurl)?$listurl:str_replace(basename($listurl), "", $listurl)) . $url;
				} 
			} 
			if ($picurl && !ereg("://", $picurl)) {
				if (ereg("^/", $picurl)) {
					$picurl = preg_replace("/http:\/\/([^\/]+)(.*)/is", "http://\\1$picurl", $listurl);
				} else {
					$picurl = str_replace(basename($listurl), "", $listurl) . $picurl;
				} 
			} 

			$url = str_replace("'", "&#39;", $url);
			$picurl = str_replace("'", "&#39;", $picurl);
			$title = str_replace("'", "&#39;", $title);
			$_url[] = $url;
			$_title[] = $title;
			if ($picurl) {
				$UT[] = "\$urldb[]='$url\t$title@@$picurl';";
			} else {
				$UT[] = "\$urldb[]='$url\t$title';";
			} 
		} 
	} 
	// print_r($UT);exit;
	$writefile = implode("\r\n", $UT); 
	// 结尾正则
	if ($rsdb[list_end_preg]) {
		$htmlcode = $writefile; //方便外部正则语句的变量比较统一
		include($WEB_PATH . "cache/{$cachepage}gather_list.end_preg.php");
		$writefile = $htmlcode; //方便外部正则语句的变量比较统一
	} 
	write_file($WEB_PATH . "cache/{$cachepage}gather_title.php", "\r\n" . $writefile, 'a');
	$page++;

	if ($urldb[$page]) {
		unset($urldb);
		include($WEB_PATH . "cache/{$cachepage}gather_title.php");
		echo "$listurl<br>正在采集第[{$page}]页的标题与内容网址,请稍候...<hr>";
		foreach($urldb AS $key => $value) {
			if ($key > 20) {
				break;
			} 
			echo "$key.$value<br>";
		} 
		echo "<META HTTP-EQUIV=REFRESH CONTENT='$refreshtime;URL=index.php?lfj=$lfj&gaction=$gaction&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&showurl=$showurl&testgather=$testgather&page=$page'>";
		exit;
	} else {
		echo "<META HTTP-EQUIV=REFRESH CONTENT='$refreshtime;URL=index.php?lfj=$lfj&showurl=$showurl&testgather=$testgather&job=list_title&id=$id&assistant=$assistant'>";
		exit;
	} 
} elseif ($job == "list_title" && $Apower[sgt_grule]) {
	$ruledb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");
	@extract($ruledb);
	$save_rule = $ruledb[save_rule];
	$save_rule = unserialize($save_rule);
	$save_rule[saveuname] = $username = $save_rule[saveuname]?$save_rule[saveuname]:$userdb[username]; //设置发布文章会员用户名
	$file_dir = $save_rule[file_dir];
	$save_getfiledb[1] = " checked "; //是否文件本地化
	$Temp_city_fid = select_where("{$pre}city", "'postdb[city_id]'  onChange=\"choose_where('getzone',this.options[this.selectedIndex].value,'','1','')\"", $save_rule[city_id]);

	if ($ruledb[type] == "jump") {
		$msg = "注意:当前配置文件设置的参数:点击标题后跳转到外部网址,使得下面大部分无效";
	} elseif ($ruledb[type] == "iframe") {
		$msg = "注意:当前配置文件设置的参数:点击标题后框架外部网址,类似大旗、奇虎,使得下面大部分无效";
	} 
	if ($testgather) {
		$autosub = "autosub();";
	} 
	include($WEB_PATH . "cache/{$cachepage}gather_title.php");

	hack_admin_tpl('list_title');
} elseif ($gaction == "list_title" && $Apower[sgt_grule]) {
	$rsdb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'"); 
	// 处理采集文章列表：正序、倒序处理；手动采集不限制采集数量；
	unset($urldb, $UT);
	include($WEB_PATH . "cache/{$cachepage}gather_title.php");

	$save_rule = $rsdb[save_rule];
	$save_rule = unserialize($save_rule);
	$ifReverse = $save_rule[ifReverse];

	if (!$save_rule[ifReverse]) { // 与采集网站顺序相同
		$num = count($urldb)-1;
		for($i = 0;$i <= $num; $i++) {
			if ($postdb[$i]) {
				$UT[] = "\$urldb[]='{$urldb[$i]}';";
			} 
		} 
	} else { // 与采集网站顺序相反（倒序采集）
		$num = count($urldb)-1;
		for($i = $num; $i >= 0; $i--) {
			if ($postdb[$i]) {
				$UT[] = "\$urldb[]='{$urldb[$i]}';";
			} 
		} 
	} 
	$writefile = implode("\r\n", array_reverse($UT));
	write_file($WEB_PATH . "cache/{$cachepage}gather_title.php", "<?php\r\n" . $writefile);

	$gaction = 'gather_content';
	echo "<META HTTP-EQUIV=REFRESH CONTENT='$refreshtime;URL=?lfj=$lfj&gaction=$gaction&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&getfile=$getfile&file_dir=$file_dir&username=$username&fid=$fid&testgather=$testgather&page=$page&failpage=$failpage&assistant=$assistant'>";
	exit;
} elseif ($gaction == "gather_content" && $Apower[sgt_grule]) {
	unset($urldb, $htmlcode);
	$rsdb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");
	$fixsystem = $rsdb[fixsystem]; //入库模块
	
	$save_rule = $rsdb[save_rule];
	$save_rule = unserialize($save_rule);
	$getfile = $getfile?$getfile:$save_rule[getfile];
	$file_dir = $file_dir?$file_dir:$save_rule[file_dir];
	$username = $username? $username:$save_rule[saveuname];
	$fid = $fid ?$fid :$save_rule[fid];
	$city_id = $postdb[city_id]?$postdb[city_id]:$save_rule[city_id];
	$zone_id = $postdb[zone_id]?$postdb[zone_id]:$save_rule[zone_id];
	$street_id = $postdb[street_id]?$postdb[street_id]:$save_rule[street_id];

	@include($WEB_PATH . "cache/{$cachepage}gather_title.php");
	$page = intval($page); 
	// $morepage大于0时.代表多页
	list($curl, $title, $morepage) = explode("\t", $urldb[$page]);
	if (!$urldb) {
		if ($nextgid) {
			$nextgid_page = intval($nextgid_page);
			$nextgid_page++;
			@include($WEB_PATH . "cache/{$cachepage}gather_giddb.php");
			$nextgid = $giddb[$nextgid_page];
			jump("<br><br><font color='red'>第 $nextgid_page 个采集任务,采集失败! <br> 无法获取远程文章列表,可能是你的规则有误;有时候也可能是采集目标站做了限制,需要去具体分析调试!</font><br><br>; 1秒后继续下一个采集任务……", "index.php?lfj=$lfj&gaction=autogather&id=$nextgid&nextgid_page=$nextgid_page&autogather=$autogather&cachepage=$cachepage", 1);
		} else {
			jump("<br><br><font color='red'>无法获取远程文章列表,可能是你的规则有误;有时候也可能是采集目标站做了限制,需要去具体分析调试!点击返回规则列表……</font><br><br>", "index.php?lfj=$lfj&job=list", 10);
			exit;
		} 
	} 

	if (!$show_content = LaneLead_GetContents($curl)) {
		$db -> query("UPDATE {$pre}sgt_grule SET  lastgathertime='$timestamp',lastgatherstatus=0,lastgathernum=0 WHERE id='$id'"); //采集失败，写入失败状态
		echo("服务器获取不了远程文件信息,因而采集失败$curl<br><br><br><br><br><br><br><br><br><br>"); 
		// exit;
	} 
	// UTF8->GBK
	if ($rsdb[charset_type] == 1) {
		require_once($WEB_PATH . "inc/class.chinese.php");
		$cnvert = new Chinese("UTF8", "GB2312", $show_content, $WEB_PATH . "./inc/gbkcode/");
		$show_content = $cnvert -> ConvertIT();
	} 

	if ($rsdb[type] == 'iframe') { // 类似奇虎
		$iframeurl = $curl;
	} else {
		// 开头做正则处理
		if ($rsdb[show_begin_preg]) {
			$htmlcode = $show_content;
			include($WEB_PATH . "cache/{$cachepage}gather_show.begin_preg.php");
			$show_content = $htmlcode;
		} 
		// 对一篇文章多页的处理,只是在第一页的时候处理.第二页就不需要了
		if ($rsdb[show_morepage] && !$morepage) {
			$i = 1;
			unset($moreurl_db);
			do {
				$i++; 
				// 后面页与第一页的不同之处做替换得到后页的真实地址
				if ($rsdb[show_firstpage]) {
					$nexturl = str_replace($rsdb[show_firstpage], str_replace("[page]", $i, $rsdb[show_morepage]), $curl);
				} else {
					$nexturl = preg_replace("/(.*)([^\d]+)([\d]*)$/is", "\\1\\2", $curl) . str_replace("[page]", $i, $rsdb[show_morepage]);
				} 
				// 对一些特殊的网站处理.比如第一页是index.htm第二页竟然是index_1.htm
				if ($i == 2 && $rsdb[show_spe2page]) {
					$tsurl = str_replace($rsdb[show_firstpage], str_replace("[page]", 1, $rsdb[show_morepage]), $curl);
					if (strstr($show_content, basename($tsurl))) {
						$moreurl_db[$page][] = "$tsurl\t$title\t1";
					} 
				} 
				if (strstr($show_content, basename($nexturl))) {
					$moreurl_db[$page][] = "$nexturl\t$title\t$i";
				} else {
					$i = 0;
				} 
			} while ($i != 0);
			if (is_array($moreurl_db[$page])) {
				// 对原要采集的文章再重新处理,因为增加了分页
				foreach($urldb AS $key => $value) {
					$_urlDB[] = "\$urldb[]='$value';";
					if ($page == $key && is_array($moreurl_db[$key])) {
						foreach($moreurl_db[$key] AS $key2 => $value2) {
							$_urlDB[] = "\$urldb[]='$value2';";
						} 
					} 
				} 
				$write_file = implode("\r\n", $_urlDB);
				write_file($WEB_PATH . "cache/{$cachepage}gather_title.php", "<?php\r\n$write_file");
				unset($urldb);
				include($WEB_PATH . "cache/{$cachepage}gather_title.php");
			} 
		} 
		// 过滤文章前面无效内容
		if ($rsdb[show_begin_code]) {
			$show_content = strstr($show_content, $rsdb[show_begin_code]);
			$num_1 = strlen($rsdb[show_begin_code]);
			$num_2 = strlen($show_content);
			$show_content = substr($show_content, $num_1, $num_2);
		} 
		// 过滤文章后的无效内容
		if ($rsdb[show_end_code]) {
			$end_content = strstr($show_content, $rsdb[show_end_code]);
			$show_content = str_replace($end_content, "", $show_content);
		} 

		$show_content = clean_blank($show_content); 
		// 新增高级采集规则助手功能
		if ($assistant == 4) {
			include_once(dirname(__FILE__) . "/inc/$fixsystem.assistant.php");
			hack_admin_tpl('assistant');
			exit;
		} 
		// 用户自定义正则,对文章做正则
		if ($rsdb[content_rule]) {
			// 把空白都去除,方便处理
			$rsdb[content_rule] = clean_blank($rsdb[content_rule]); 
			// 获取正则里的规则数组
			preg_match_all("/\{(.*?)\}/is", $rsdb[content_rule], $array); 
			// 获取变量
			foreach($array[1] AS $key => $value) {
				if (!ereg("^NO", $value) && !ereg("^\*", $value)) {
					$detail = explode("=", $value);
					$ruledb[++$key] = $detail[0];
				} 
			} 
			// 获取处理后能使用的规则
			$rule = get_rule($rsdb[content_rule]); 
			// 对采集的内容跟据正则进行校正
			preg_match_all("/$rule/is", $show_content, $array2); 
			// 获取有用的数组
			foreach($ruledb AS $key => $value) {
				foreach($array2[$key] AS $key2 => $value2) {
					if (!eregi("(content|telephone|picurl|imageurl)", $value) ) {
						$value2 = strip_tags($value2, "");
					} 
					$value2 = str_replace("\\", "-", $value2); // 容错处理
					$listdb[$value][] = $value2; 
				} 
			} 
			// print_r($listdb);exit;
			// 把用户自定义的变量都取出来
			foreach($listdb AS $key => $value) {
				$$key = $value[0];
				$gather_module_valeDB[$key] = $value[0]; //为其它模型字段采集做处理
			} 
			$show_content = $content; 
			// 支持十个自定义内容分割
			for($gci = 1;$gci <= 10;$gci++) {
				$var_content = "content" . $gci;
				if ($$var_content) {
					$show_content = $show_content . $$var_content;
				} 
			} 
		} 
		// echo $show_content;exit;
		// 过滤文章中不想看到的文字
		if ($rsdb[show_replace_word]) {
			$detail = explode("\r\n", $rsdb[show_replace_word]);
			foreach($detail AS $key => $value) {
				list($oldword, $newword) = explode("|", $value);
				$show_content = str_replace($oldword, $newword, $show_content);
			} 
		} 
		// 文章结尾做正则处理
		if ($rsdb[show_end_preg]) {
			$htmlcode = $show_content;
			include($WEB_PATH . "cache/{$cachepage}gather_show.end_preg.php");
			$show_content = $htmlcode;
		} 
	} 
	// 获取文件.文件切割符,图片一般src=,这里默认是图片
	if (!$rsdb[file_explode]) {
		$rsdb[file_explode] = 'src=';
		$show_content = str_replace("SRC=", "src=", $show_content);
		if (!$rsdb[file_type] && $rsdb[fixsystem] == 'article') {
			$rsdb[file_type] = "jpg|gif|png";
		} 
	} 
	$show_content = str_replace("\\", "/", $show_content); //反斜杠转化
	$Filedb = getfileUrl($rsdb, $show_content, $curl); 
	// 结尾正则,可以直接通过正则获取文件地址,如果不获取文件的话.与上面已有结尾正则是有点雷同
	if ($rsdb[show_endfile_preg]) {
		$htmlcode = $show_content;
		include($WEB_PATH . "cache/{$cachepage}gather_show.endfile_preg.php");
		$show_content = $htmlcode;
	} 
	// 文件本地化
	unset($_pre);
	$_pre=$pre.$Marray[$fixsystem][pre];
	if ($Filedb && $getfile && $fid) {
		$dir_id = $file_dir?$file_dir:"$_pre/$fid";
		if (!is_dir($WEB_PATH . "$webdb[updir]/$dir_id")) {
			makepath($WEB_PATH . "$webdb[updir]/$dir_id");
		} 
		if ($getfile) {
			foreach($Filedb AS $key2 => $fileurl) {
				$Filedb[$key2] = "$dir_id/" . time() . basename($fileurl);
				if (strstr($Filedb[$key2], '?')) {
					$Filedb[$key2] = str_replace("?", "_____", $Filedb[$key2]);
				} 
				$file_Type = strrchr($Filedb[$key2], ".");
				if (strlen($file_Type) > 5) {
					$Filedb[$key2] .= ".rar";
				} 
				if ($getfilecontent = sockOpenUrl($fileurl)) {
					write_file($WEB_PATH . "$webdb[updir]/{$Filedb[$key2]}", $getfilecontent);
				} else {
					copy($fileurl, $WEB_PATH . "$webdb[updir]/{$Filedb[$key2]}");
				} 
			} 
		} 
	} 
	// 采集边浏览图片
	$Filedb || $Filedb = array();
	foreach($Filedb AS $key2 => $fileurl) {
		if (eregi(".jpg$", $fileurl) || eregi(".gif$", $fileurl)) {
			// echo "<img src=".tempdir($fileurl)."><br>";
		} 
		echo "<A HREF='$fileurl' target=_blank>$fileurl</A><hr>";
	} 

	$detail_title = explode("@@", $title);
	if ($detail_title[1] == '') {
		$title = $detail_title[0];
	} 
	// 格式化代码开始
	include(dirname(__FILE__) . "/inc/system.filter.php");
	$content = $show_content; 
	// 导入哪个系统进行选择
	if (!$fixsystem || !file_exists(dirname(__FILE__) . "/inc/$fixsystem.system.php")) {
		$fixsystem = "article";
	} 
	// 不测试的时候.入库
	if (!$testgather && $gather_module_valeDB) {
		include(dirname(__FILE__) . "/inc/$fixsystem.system.php");
	} 

	$page++;
	if ($urldb[$page]) {
		$p = $page-1; 
		// 只显示部分方便用户查看采集情况
		// $testgather || $content = get_word($content, 1000);
		// $content = filtrate($content);
		echo "正在采集第[$page]页,请耐心等待...<A HREF={$urldb[$p]} target=_blank>{$urldb[$p]}</A><hr>";
		if ($gather_module_valeDB) {
			// 只显示部分方便用户查看采集情况
			$testgather || $content = get_word($content, 500);
			$content = filtrate($content);
			if (!$testgather) {
				echo "$content";
			} else {
				LaneLead_dump($gather_module_valeDB);
				sleep(1); //暂停1秒，以便查看采集内容
			} 
		} else {
			$failpage = intval($failpage);
			echo "<br><br><font color='red'>无法获取远程文章内容,可能是你的规则有误;有时候也可能是采集目标站做了限制,需要去具体分析调试!</font> 采集将继续进行……";
			$failpage++;
		} 
		echo "<META HTTP-EQUIV=REFRESH CONTENT='$refreshtime;URL=?lfj=$lfj&gaction=$gaction&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&getfile=$getfile&file_dir=$file_dir&username=$username&fid=$fid&testgather=$testgather&page=$page&failpage=$failpage&cachepage=$cachepage'>";
		exit;
	} else {
		if (!$gather_module_valeDB) {
			$failpage++;
		} 
		if (!$autogather) {
			$num = count($urldb) - $failpage;
			if ($testgather) {
				jump("测试采集完毕,模拟 <font color='green'>成功采集了 {$num} 篇</font>, <font color='red'>失败 {$failpage} 篇</font>,其实没有入数据库", "index.php?lfj=$lfj&job=list", 20);
			} else {
				$db -> query("UPDATE {$pre}sgt_grule SET  lastgathertime='$timestamp',lastgatherstatus=1,lastgathernum='$num' WHERE id='$id'"); //采集成功，写入成功状态
				jump("采集完毕,<font color='green'>成功采集了 {$num} 篇</font>, <font color='red'>失败 {$failpage} 篇</font>", "index.php?lfj=$lfj&job=list", 10);
			} 
		} else {
			unset($giddb);
			$num = count($urldb) - $failpage;
			$db -> query("UPDATE {$pre}sgt_grule SET  lastgathertime='$timestamp',lastgatherstatus=1,lastgathernum='$num' WHERE id='$id'"); //采集成功，写入成功状态
			$nextgid_page = intval($nextgid_page);
			$nextgid_page++;
			@include($WEB_PATH . "cache/{$cachepage}gather_giddb.php");
			$nextgid = $giddb[$nextgid_page];
			if ($nextgid) {
				jump("第 $nextgid_page 个采集任务,采集完毕,<font color='green'>成功采集了 {$num} 篇</font>, <font color='red'>失败 {$failpage} 篇</font>; 3秒后继续下一个采集任务……", "index.php?lfj=$lfj&gaction=autogather&id=$nextgid&nextgid_page=$nextgid_page&autogather=$autogather&cachepage=$cachepage", 3);
			} else {
				jump("批量采集完毕,点击返回采集规则列表", "index.php?lfj=$lfj&job=list", 10);
			} 
		} 
	} 
} elseif ($job == "autogather" && $Apower[sgt_grule]) {
	@ignore_user_abort(true);
	@set_time_limit(0);
	$gatherid = $id;
	require_once("autogather.php");
	die('已执行');
} elseif ($gaction == "autogather" && $Apower[sgt_grule]) {
	$rsdb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");
	$page = intval($page);
	if (!$page) {
		if ($rsdb[listmoreurl]) {
			$detail = explode("\r\n", $rsdb[listmoreurl]);
			foreach($detail AS $key => $value) {
				$allurldb[] = "\$urldb[]='$value';";
			} 
			$allurl = implode("\r\n", $allurldb);
		} else {
			$rsdb[page_step] || $rsdb[page_step] = 1;

			for($i = $rsdb[page_begin];$i <= $rsdb[page_end];$i++) {
				if ($rsdb[page_begin] == 0) {
					$II = ($i-1) * $rsdb[page_step];
				} else {
					$II = ($i-1) * $rsdb[page_step] + 1;
				} 

				$value = str_replace("[page]", "$II", $rsdb[listurl]);
				if ($i == 1 && $rsdb[firstpage]) {
					$value = $rsdb[firstpage];
				} 
				$allurldb[] = "\$urldb[]='$value';";
			} //print_R($allurldb);  die($allurldb);
			$allurl = implode("\r\n", $allurldb);
		} 
		write_file($WEB_PATH . "cache/{$cachepage}gather_morepage.php", "<?php\r\n" . $allurl);
		write_file($WEB_PATH . "cache/{$cachepage}gather_title.php", "<?php\r\n");
		if ($rsdb[list_begin_preg]) {
			write_file($WEB_PATH . "cache/{$cachepage}gather_list.begin_preg.php", "<?php\r\n$rsdb[list_begin_preg]");
		} 
		if ($rsdb[list_end_preg]) {
			write_file($WEB_PATH . "cache/{$cachepage}gather_list.end_preg.php", "<?php\r\n$rsdb[list_end_preg]");
		} 
		if ($rsdb[show_begin_preg]) {
			write_file($WEB_PATH . "cache/{$cachepage}gather_show.begin_preg.php", "<?php\r\n$rsdb[show_begin_preg]");
		} 
		if ($rsdb[show_end_preg]) {
			write_file($WEB_PATH . "cache/{$cachepage}gather_show.end_preg.php", "<?php\r\n$rsdb[show_end_preg]");
		} 
		if ($rsdb[show_endfile_preg]) {
			write_file($WEB_PATH . "cache/{$cachepage}gather_show.endfile_preg.php", "<?php\r\n$rsdb[show_endfile_preg]");
		} 
	} 
	@include($WEB_PATH . "cache/{$cachepage}gather_morepage.php");
	$listurl = $urldb[$page];
	$code = LaneLead_GetContents($listurl, $gsort = "title");
	if (!$code) {
		echo("采集失败<br><br><br><br><br><br><br><br><br><br>"); 
		// exit;
	} 
	// UTF8->GBK
	if ($rsdb[charset_type] == 1) {
		require_once($WEB_PATH . "inc/class.chinese.php");
		$cnvert = new Chinese("UTF8", "GB2312", $code, $WEB_PATH . "./inc/gbkcode/");
		$code = $cnvert -> ConvertIT();
	} 
	// 开头正则
	if ($rsdb[list_begin_preg]) {
		$htmlcode = $code; //方便外部正则语句的变量比较统一
		include($WEB_PATH . "cache/{$cachepage}gather_list.begin_preg.php");
		$code = $htmlcode;
	} 
	// 截取从某段字符开始至结尾的内容
	if ($rsdb[list_begin_code]) {
		$code = strstr($code, $rsdb[list_begin_code]);
	} 
	// 去掉某段字符后面的内容
	if ($rsdb[list_end_code]) {
		$end_content = strstr($code, $rsdb[list_end_code]);
		$code = str_replace($end_content, "", $code);
	} 
	// 替换一些字符
	if ($rsdb[title_replace_word]) {
		$detail = explode("\r\n", $rsdb[title_replace_word]);
		foreach($detail AS $key => $value) {
			list($oldword, $newword) = explode("|", $value);
			$code = str_replace($oldword, $newword, $code);
		} 
	} 
	// 用户自定义正则
	if ($rsdb[title_rule]) {
		// 把空白都去除,方便处理
		$rsdb[title_rule] = clean_blank($rsdb[title_rule]);
		$code = clean_blank($code); 
		// echo $code;exit;
		// 获取正则里的规则数组
		preg_match_all("/\{(.*?)\}/is", $rsdb[title_rule], $array); 
		// 获取变量
		foreach($array[1] AS $key => $value) {
			if (!ereg("^NO", $value) && !ereg("^\*", $value)) {
				$detail = explode("=", $value);
				$ruledb[++$key] = $detail[0];
			} 
		} 
		// 获取处理后能使用的规则
		$rule = get_rule($rsdb[title_rule]); 
		// 对采集的内容跟据正则进行校正
		preg_match_all("/$rule/is", $code, $array2); 
		// 获取有用的数组
		foreach($ruledb AS $key => $value) {
			foreach($array2[$key] AS $key2 => $value2) {
				$value2 = str_replace("\\", "-", $value2); // 容错处理
				$listdb[$value][] = addslashes(strip_tags($value2, "")); //标题多样采集   
				// $listdb[$value][] = $value2 ;
			} 
		} 
		// url文章地址必须要有的 进行简单容错处理
		$listdb[url] = str_replace('"', '', $listdb[url]);
		$listdb[url] = str_replace("'", '', $listdb[url]);
		$detail_content = $listdb[url];
	} else {
		$code = str_replace("HREF=", "href=", $code);
		$code = str_replace("</A>", "</a>", $code);
		$code = str_replace("href='", "href=", $code);
		$code = str_replace('href="', 'href=', $code);
		$detail_content = explode("href=", $code);
	} 
	unset($i, $_url, $_title);
	foreach($detail_content AS $key_content => $value_content) {
		if ($rsdb[title_rule]) {
			$url = $value_content;
			$title = trim($listdb[title][$key_content]); //避免因空格问题取不到title
			$picurl = $listdb[picurl][$key_content];
		} else {
			if ($key_content == 0) {
				continue;
			} 
			$url = preg_replace("/([^'\" >]+)(.*)/is", "\\1", $value_content); //echo $url; die();
			$s1_title = strstr($value_content, ">");
			$s2_title = strstr($value_content, "</a>");
			$s3_title = str_replace($s2_title, "", $s1_title);
			$title = str_replace(">", "", $s3_title);
			$title = substr($s3_title, 1, strlen($s3_title)-1);
			$title = preg_replace("/<([^<>]+)>(.*)<([^<>]+)>/is", "\\2", $title);
		} 
		// 标题与URL中不能包含有的字符
		if ($rsdb[link_noinclude_word]) {
			$detail = explode("\r\n", $rsdb[link_noinclude_word]);
			foreach($detail AS $key => $value) {
				if (!$value) {
					continue;
				} 
				if (strstr($title, $value) || strstr($url, $value)) {
					unset($url, $title);
				} 
			} 
		} 
		// URL中必须包含有的字符
		if ($rsdb[link_include_word]) {
			$detail = explode("\r\n", $rsdb[link_include_word]);
			foreach($detail AS $key => $value) {
				if (!$value) {
					continue;
				} 
				if (!strstr($url, $value)) {
					unset($url, $title);
				} 
			} 
		} 
		// 标题不能小于多少字
		if ($rsdb[title_minleng]) {
			if (strlen($title) < $rsdb[title_minleng] + 1) {
				unset($url, $title);
			} 
		} 
		// 链接中的地址要替换
		if ($rsdb[link_replace_word]) {
			$__detail = explode("\r\n", $rsdb[link_replace_word]);
			foreach($__detail AS $__key => $__value) {
				$__de = explode("|", $__value);
				$url = str_replace($__de[0], $__de[1], $url);
			} 
		} 
		// 对地址的完整性进行处理
		if ($url && $title) {
			if (!ereg("://", $url)) {
				if (ereg("^/", $url)) {
					$url = preg_replace("/http:\/\/([^\/]+)(.*)/is", "http://\\1$url", $listurl);
				} else {
					$url = (ereg("\/$", $listurl)?$listurl:str_replace(basename($listurl), "", $listurl)) . $url;
				} 
			} 
			if ($picurl && !ereg("://", $picurl)) {
				if (ereg("^/", $picurl)) {
					$picurl = preg_replace("/http:\/\/([^\/]+)(.*)/is", "http://\\1$picurl", $listurl);
				} else {
					$picurl = str_replace(basename($listurl), "", $listurl) . $picurl;
				} 
			} 

			$url = str_replace("'", "&#39;", $url);
			$picurl = str_replace("'", "&#39;", $picurl);
			$title = str_replace("'", "&#39;", $title);
			$_url[] = $url;
			$_title[] = $title;
			if ($picurl) {
				$UT[] = "\$urldb[]='$url\t$title@@$picurl';";
			} else {
				$UT[] = "\$urldb[]='$url\t$title';";
			} 
		} 
	} 
	// print_r($UT);exit;
	$writefile = implode("\r\n", $UT); 
	// 结尾正则
	if ($rsdb[list_end_preg]) {
		$htmlcode = $writefile; //方便外部正则语句的变量比较统一
		include($WEB_PATH . "cache/{$cachepage}gather_list.end_preg.php");
		$writefile = $htmlcode; //方便外部正则语句的变量比较统一
	} 

	write_file($WEB_PATH . "cache/{$cachepage}gather_title.php", "\r\n" . $writefile, 'a');
	$page++;

	if ($urldb[$page]) {
		unset($urldb);
		include($WEB_PATH . "cache/{$cachepage}gather_title.php");
		echo "$listurl<br>正在采集第[{$page}]页的标题与内容网址,请稍候...<hr>";
		foreach($urldb AS $key => $value) {
			if ($key > 10) {
				break;
			} 
			echo "$value<br>";
		} 
		echo "<META HTTP-EQUIV=REFRESH CONTENT='$refreshtime;URL=index.php?lfj=$lfj&gaction=$gaction&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&showurl=$showurl&testgather=$testgather&page=$page&cachepage=$cachepage'>";
		exit;
	} else {
		// 处理采集文章列表：正序、倒序处理；采集数量限制处理；
		unset($urldb, $UT);
		include($WEB_PATH . "cache/{$cachepage}gather_title.php");

		$save_rule = $rsdb[save_rule];
		$save_rule = unserialize($save_rule);
		$ifReverse = $save_rule[ifReverse];
		$limitNum = $save_rule[limitNum]?$save_rule[limitNum]:count($urldb);

		$k = 0;
		if (!$save_rule[ifReverse]) { // 与采集网站顺序相同
			$num = count($urldb)-1;
			for($i = 0;$i <= $num; $i++) {
				if ($limitNum <= $k) {
					break;
				} 
				$UT[] = "\$urldb[]='{$urldb[$i]}';";
				$k++;
			} 
		} else { // 与采集网站顺序相反（倒序采集）
			$num = count($urldb)-1;
			for($i = $num; $i >= 0; $i--) {
				if ($limitNum <= $k) {
					break;
				} 
				$UT[] = "\$urldb[]='{$urldb[$i]}';";
				$k++;
			} 
		} 

		$writefile = implode("\r\n", array_reverse($UT));
		write_file($WEB_PATH . "cache/{$cachepage}gather_title.php", "<?php\r\n" . $writefile);

		$gaction = 'gather_content';

		$fid = $save_rule[fid];
		$getfile = $save_rule[getfile];
		$file_dir = $save_rule[file_dir];
		$username = $save_rule[saveuname];

		echo "<META HTTP-EQUIV=REFRESH CONTENT='$refreshtime;URL=?lfj=$lfj&gaction=$gaction&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&fid=$fid&getfile=$getfile&file_dir=$file_dir&username=$username&testgather=$testgather&cachepage=$cachepage'>";
		exit;
	} 
} elseif ($job == "gather_all" && $Apower[sgt_grule]) {
	@ignore_user_abort(true);
	@set_time_limit(0);
	require_once("autogather.php");
	die('已执行');
} elseif ($gaction == "gather_all_1" && $Apower[sgt_grule]) {
	if (!$iddb) {
		showmsg("至少选择一个操作对象");
	} 
	write_file($WEB_PATH . "cache/{$cachepage}gather_giddb.php", "<?php\r\n");
	foreach($iddb AS $key => $value) {
		$UT[] = "\$giddb[]='$key';";
	} 
	$writefile = implode("\r\n", $UT);
	write_file($WEB_PATH . "cache/{$cachepage}gather_giddb.php", "\r\n" . $writefile, 'a');
	@include($WEB_PATH . "cache/{$cachepage}gather_giddb.php");
	$nextgid = $giddb[0];
	$autogather = 1;
	jump("批量采集计划设置成功,3秒后自动开始批量采集任务", "index.php?lfj=$lfj&gaction=autogather&id=$nextgid&nextgid_page=$nextgid_page&autogather=$autogather&cachepage=$cachepage", 3);
} elseif ($gaction == "gather_all_2" && $Apower[sgt_grule]) {
	$rows = 20;
	$cachepages = LaneLead_getcachepages("{$pre}sgt_grule", " WHERE ifauto=1 ", $rows);
	echo "下面进行多线程自动批量采集，采集完毕需要手动关闭该页。" . "<br><hr>";
	for($cachepage = 1;$cachepage <= $cachepages;$cachepage++) {
		unset($UT, $giddb);
		$min = ($cachepage-1) * $rows;
		$query = $db -> query("SELECT id FROM {$pre}sgt_grule WHERE ifauto=1 LIMIT $min,$rows");
		write_file($WEB_PATH . "cache/{$cachepage}gather_giddb.php", "<?php\r\n");
		while ($rsdb = $db -> fetch_array($query)) {
			$UT[] = "\$giddb[]='$rsdb[id]';";
		} 
		$writefile = implode("\r\n", $UT);
		write_file($WEB_PATH . "cache/{$cachepage}gather_giddb.php", "\r\n" . $writefile, 'a');
		@include($WEB_PATH . "cache/{$cachepage}gather_giddb.php");
		$nextgid = $giddb[0];
		$autogather = 1;
		echo "<hr>这是第 <font color='red'>$cachepage</font> 个进程采集……<br>";
		echo "<iframe src='index.php?lfj=$lfj&gaction=autogather&id=$nextgid&nextgid_page=$nextgid_page&autogather=$autogather&cachepage=$cachepage' height='200' width='95%'></iframe><br><br>"; 
		// jump("批量采集计划设置成功,3秒后自动开始批量采集任务", "index.php?lfj=$lfj&gaction=autogather&id=$nextgid&nextgid_page=$nextgid_page&autogather=$autogather&cachepage=$cachepage", 3);
	} 
} elseif ($job == "list" && $Apower[sgt_grule]) {
	if (!$page) {
		$page = 1;
	} 
	$rows = 20;
	$min = ($page-1) * $rows;
	$SQL = "";
	if ($fid) {
		$SQL = " WHERE A.fid='$fid' ";
	} 
	$query = $db -> query("SELECT A.*,B.name FROM {$pre}sgt_grule A LEFT JOIN {$pre}sgt_gsort B ON A.fid=B.fid $SQL ORDER BY A.id DESC LIMIT $min,$rows");
	while ($rs = $db -> fetch_array($query)) {
		$rs[posttime] = date("Y-m-d", $rs[posttime]);
		if ($rs[lastgathertime]) {
			$rs[lastgathertime] = date("Y-m-d H:i:s", $rs[lastgathertime]);
		} 
		$save_rule = $rs[save_rule];
		$save_rule = unserialize($save_rule); 
		// $fid = $save_rule[fid];
		$sort_table = $Marray[$rs[fixsystem]][sort_table];
		if ((strpos($sort_table, "forums"))) {
			$fidrs = $db -> get_one("SELECT fid,name FROM  $sort_table WHERE fid='$save_rule[fid]'");
		} else {
			$fidrs = $db -> get_one("SELECT fid,name FROM {$pre}$sort_table WHERE fid='$save_rule[fid]'");
		} 
		$rs[save_sortname] = $fidrs[name]?$fidrs[name]:'未设置';

		$rs[lastgatherstatus] = $rs[lastgatherstatus]?'<font color="green">成功(' . $rs[lastgathernum] . ')</font>':'<font color="red">失败</font>';

		$listdb[] = $rs;
	} 
	$showpage = getpage("{$pre}sgt_grule A", $SQL, "index.php?lfj=$lfj&fid=$fid&job=list", $rows);
	$sort_fid = $Guidedb -> Select("{$pre}sgt_gsort", "fid", $fid, "index.php?lfj=$lfj&job=list");

	hack_admin_tpl('list');
} elseif ($job == "addrulesql" && $Apower[sgt_grule]) {
	hack_admin_tpl('addrulesql');
} elseif ($gaction == 'addrulesql' && $Apower[sgt_grule]) {
	if (strstr($sqlcode, "'")) {
		$sqlcode = StripSlashes($sqlcode);
	} else {
		$sqlcode = urldecode($sqlcode);
	} 
	$sqlcode = str_replace('p8_gather_rule', "{$pre}sgt_grule", $sqlcode); //兼容旧版
	$sqlcode = str_replace('qb_gather_rule', "{$pre}sgt_grule", $sqlcode); //兼容旧版
	$sqlcode = str_replace('ll_gather_rule', "{$pre}sgt_grule", $sqlcode);
	$db -> query($sqlcode);
	jump("如果刚才页面没有报错,那恭喜你,导入成功", "index.php?lfj=$lfj&job=list", 1);
} elseif ($job == 'sharerulesql' && $Apower[sgt_grule]) {
	$rsdb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");
	foreach($rsdb AS $key => $value) {
		$rsdb[$key] = mysql_escape_string($value);
	} 
	extract($rsdb);
	$SQL = "INSERT INTO `ll_gather_rule` (`id`,`fid`, `type`, `fixsystem`, `filetype`, `webname`, `listurl`, `firstpage`, `page_begin`, `page_end`, `page_step`, `title_minleng`, `listmoreurl`, `link_include_word`, `link_noinclude_word`, `link_replace_word`, `title_replace_word`, `list_begin_code`, `list_end_code`, `list_begin_preg`, `list_end_preg`, `gatherthesame`, `show_begin_preg`, `show_end_preg`, `show_endfile_preg`, `show_begin_code`, `show_end_code`, `show_replace_word`, `show_morepage`, `show_firstpage`, `show_spe2page`, `posttime`, `list`, `copypic`, `sort`, `file_type`, `file_minleng`, `file_minsize`, `file_includeword`, `file_noincludeword`, `file_explode`, `file_picwidth`, `file_star_string`, `title_rule`, `content_rule`, `title_morepage_rull`, `content_morepage_rull`, `charset_type`,`save_rule`,`ifauto`) VALUES ('','$fid','$type','$fixsystem','$filetype','$webname','$listurl','$firstpage','$page_begin','$page_end','$page_step','$title_minleng','$listmoreurl','$link_include_word','$link_noinclude_word','$link_replace_word','$title_replace_word','$list_begin_code','$list_end_code','$list_begin_preg','$list_end_preg','$gatherthesame','$show_begin_preg','$show_end_preg','$show_endfile_preg','$show_begin_code','$show_end_code','$show_replace_word','$show_morepage','$show_firstpage','$show_spe2page','$posttime','$list','$copypic','$sort','$file_type','$file_minleng','$file_minsize','$file_includeword','$file_noincludeword','$file_explode','$file_picwidth','$file_star_string','$title_rule','$content_rule','$title_morepage_rull','$content_morepage_rull','$charset_type','$save_rule','$ifauto');";
	$SQL = urlencode($SQL);

	hack_admin_tpl('sharerulesql');
} elseif ($gaction == "deleterule" && $Apower[sgt_grule]) {
	$db -> query("DELETE FROM {$pre}sgt_grule WHERE id='$id'");
	jump("删除成功", "index.php?lfj=$lfj&job=list", 1);
} elseif ($job == "showfid" && $Apower[sgt_grule]) {
	include_once(dirname(__FILE__) . "/inc/system.showfid.php");
} elseif ($job == "getzone" && $Apower[sgt_grule]) {
	include_once(dirname(__FILE__) . "/inc/system.getzone.php");
} elseif ($job == "getstreet" && $Apower[sgt_grule]) {
	include_once(dirname(__FILE__) . "/inc/system.getstreet.php");
} 
// 以下是分类管理
elseif ($job == "listsort" && $Apower[sgt_gsort]) {
	$fid = intval($fid);

	$sortdb = array();
	$query = $db -> query("SELECT * FROM {$pre}sgt_gsort ORDER BY list DESC");
	while ($rs = $db -> fetch_array($query)) {
		$sortdb[] = $rs;
	} 

	hack_admin_tpl('sort');
} elseif ($gaction == "addsort" && $Apower[sgt_gsort]) {
	if (!$IS_BIZLaneLead) {
		@extract($db -> get_one("SELECT COUNT(*) AS NUM FROM {$pre}sgt_gsort"));
		if ($NUM > 9) {
			showerr("免费版最多只能创建10个分类");
		} 
	} 
	$db -> query("INSERT INTO {$pre}sgt_gsort (name,fup,class,type) VALUES ('$name','0','1','1') ");
	jump("创建成功", $FROMURL);
} elseif ($job == "editsort" && $Apower[sgt_gsort]) {
	$rsdb = $db -> get_one("SELECT * FROM {$pre}sgt_gsort WHERE fid='$fid'");

	hack_admin_tpl('editsort');
} elseif ($gaction == "editsort" && $Apower[sgt_gsort]) {
	$db -> query("UPDATE {$pre}sgt_gsort SET name='$postdb[name]' WHERE fid='$fid' ");
	jump("修改成功", "index.php?lfj=$lfj&job=list");
} elseif ($gaction == "delete" && $Apower[sgt_gsort]) {
	$db -> query(" DELETE FROM `{$pre}sgt_gsort` WHERE fid='$fid' ");
	jump("删除成功", $FROMURL);
} elseif ($gaction == "editlist" && $Apower[sgt_gsort]) {
	foreach($order AS $key => $value) {
		$db -> query("UPDATE {$pre}sgt_gsort SET list='$value' WHERE fid='$key' ");
	} 
	jump("修改成功", "$FROMURL", 1);
} elseif ($gaction == "deletelist" && $Apower[sgt_gsort]) {
	if (!$iddb) {
		showmsg("至少选择一个操作对象");
	} 
	foreach($iddb AS $key => $value) {
		$db -> query(" DELETE FROM `{$pre}sgt_grule` WHERE id='$key' ");
	} 
	jump("批量删除成功", "$FROMURL", 1);
} 

?>