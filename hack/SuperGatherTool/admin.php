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
	$webname = "���ɼ�����վ����";
	$sort_fid = $Guidedb -> Select("{$pre}sgt_gsort", "fid", $fid);
	$rulepage = '0';

	hack_admin_tpl('edit_title');
} elseif ($gaction == "add_title" && $Apower[sgt_grule]) {
	if ($rulepage == 0 && !$listmoreurl) {
		showmsg("Ҫ�ɼ�����ַ����Ϊ��");
	} elseif ($rulepage && !$listurl) {
		showmsg("Ҫ�ɼ���ͨ����ַ����Ϊ��");
	} 
	if (!$title_rule) {
		showmsg("�Զ��������﷨������Ϊ��");
	} elseif (!strstr($title_rule, '{url=') || !strstr($title_rule, '{title=')) {
		showmsg("��������д�Զ��������﷨");
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
		jump("���ڲ��Բɼ�����,�����ĵȴ�", "index.php?lfj=$lfj&gaction=gather_title&id=$rs[id]", 1);
	} 
	jump("������һ��", "index.php?lfj=$lfj&job=edit_content&id=$rs[id]", 1);
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
		jump("���ڲ��Բɼ�����,�����ĵȴ�", "index.php?lfj=$lfj&gaction=gather_title&id=$id&nextgid_page=$nextgid_page&autogather=$autogather", 1);
	} 
	if ($saveback) {
		jump("�޸ĳɹ�,���زɼ������б�", "index.php?lfj=$lfj&job=list", 1);
	} else {
		jump("������һ��������ϸ����", "index.php?lfj=$lfj&job=edit_content&id=$id", 1);
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

	include_once(dirname(__FILE__) . "/inc/$fixsystem.assistant.php"); //����ģ��˵���͹��������ļ�
	
	hack_admin_tpl('edit_content');
} elseif ($gaction == "edit_content" && $Apower[sgt_grule]) {
	if ($content_rule) {
		if (strstr($content_rule, "*}{*}") || strstr($content_rule, "{*}{")) {
			showmsg("���������ͨ������ֶ�ͨ���֮��,����������ͨ���֮��,����Ҫ��HTML�������");
		} 
	} 
	// ��ʼ���ɼ���������
	$ruledb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");
	if (!$ruledb[save_rule]) {
		$save_rule[getfile] = 0; //�Ƿ��ļ����ػ�	
		$save_rule[ifReverse] = 0; //�Ƿ���ɼ�
		$save_rule[limitNum] = 0; //���Ʋɼ�����	
		$save_rule[ifauto] = 1; //�Ƿ�����ʱ�Զ��ɼ�
		$save_rule[filter_iframe] = 1; //�Ƿ���� iframe
		$save_rule[filter_object] = 1; //�Ƿ���� object
		$save_rule[filter_script] = 1; //�Ƿ���� script
		$save_rule[filter_style] = 1; //�Ƿ���� style
		$save_rule[filter_font] = 1; //�Ƿ���� font
		$save_rule[filter_tablestyle] = 1; //�Ƿ���� �����������
		$save_rule[filter_div] = 1; //�Ƿ���� div
		$save_rule[filter_span] = 1; //�Ƿ���� span
		$save_rule[filter_displaynone] = 1; //�Ƿ���� ���ɼ�Ԫ��
		$save_rule[filter_table] = 0; //�Ƿ���� table
		$save_rule[filter_img] = 0; //�Ƿ���� img
		$save_rule[filter_strong] = 0; //�Ƿ���� strong��b
		$save_rule[filter_a] = 1; //�Ƿ���� a
		$save_rule[filter_format] = 1; //�Ƿ��ʽ��html����
		$save_rule = addslashes(serialize($save_rule));
	} else {
		$save_rule = $ruledb[save_rule];
	} 
	$db -> query("UPDATE {$pre}sgt_grule SET type='$type',gatherthesame='$gatherthesame',show_begin_preg='$show_begin_preg',show_end_preg='$show_end_preg',show_endfile_preg='$show_endfile_preg',show_begin_code='$show_begin_code',show_end_code='$show_end_code',show_replace_word='$show_replace_word',show_morepage='$show_morepage',show_firstpage='$show_firstpage',copypic='$copypic',sort='$sort',file_type='$file_type',file_minleng='$file_minleng',file_minsize='$file_minsize',file_includeword='$file_includeword',file_noincludeword='$file_noincludeword',file_explode='$file_explode',file_picwidth='$file_picwidth',file_star_string='$file_star_string',content_rule='$content_rule',show_spe2page='$show_spe2page',save_rule='$save_rule' WHERE id='$id'");
	if ($testgather) {
		jump("�����ĵȴ�,�Ȳɼ�����,���ٵ��ѡ����Բɼ�", "index.php?lfj=$lfj&gaction=gather_title&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&testgather=$testgather&assistant=$assistant", 1);
	} 
	if ($content_rule) {
		preg_match_all("/\{([a-z\*=]+)\}/is", $content_rule, $array);
		foreach($array[1] AS $key => $value) {
			if ($value != '*') {
				$v0 = $array[1][$key-1];
				$v1 = $array[1][$key + 1];
				if (($v0 && $v0 != '*') || ($v1 && $v1 != '*')) {
					if (($v0 && $v0 != '*')) {
						$MSG = "��{{$value}}���롰{{$v0}}��";
					} else {
						$MSG = "��{{$value}}���롰{{$v1}}��";
					} 
					if ($saveback) {
						jump("<font color=red>����::�������ύ,���п��ܲɼ����ɹ�,��Ϊ��������ֶ�ͨ���{$MSG}֮��,û��ʹ�ò��������ͨ���{*},��������Ǳ���Ҫʹ�õ�</font><br>�������Բɼ�û�����⣬<a href='index.php?lfj=$lfj&job=list'>������زɼ��б�</a>", "index.php?lfj=$lfj&job=list", 30);
					} else {
						jump("<font color=red>����::�������ύ,���п��ܲɼ����ɹ�,��Ϊ��������ֶ�ͨ���{$MSG}֮��,û��ʹ�ò��������ͨ���{*},��������Ǳ���Ҫʹ�õ�</font><br>�������Բɼ�û�����⣬<a href='index.php?lfj=$lfj&job=edit_saverule&id=$id'>������һ������������</a>", "index.php?lfj=$lfj&job=edit_saverule&id=$id", 30);
					} 
				} 
			} 
		} 
	} 

	if ($saveback) {
		jump("�޸ĳɹ�,���زɼ������б�", "index.php?lfj=$lfj&job=list", 1);
	} else {
		jump("������һ������������", "index.php?lfj=$lfj&job=edit_saverule&id=$id", 1);
	} 
} elseif ($job == "edit_saverule" && $Apower[sgt_grule]) {
	$ruledb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");
	@extract($ruledb);

	$save_rule = unserialize($save_rule);

	$save_getfiledb[1] = " checked "; //�Ƿ��ļ����ػ�
	$save_rule[saveuname] = $save_rule[saveuname]?$save_rule[saveuname]:$userdb[username]; //���÷������»�Ա�û���
	$ifautodb[1] = " checked "; //�Ƿ�����ʱ�Զ��ɼ�
	$ifReversedb[1] = " checked "; //�Ƿ���ɼ�
	$filter_iframedb[1] = " checked "; //�Ƿ���� iframe
	$filter_objectdb[1] = " checked "; //�Ƿ���� object
	$filter_scriptdb[1] = " checked "; //�Ƿ���� script
	$filter_styledb[1] = " checked "; //�Ƿ���� style
	$filter_fontdb[1] = " checked "; //�Ƿ���� font
	$filter_tablestyledb[1] = " checked "; //�Ƿ���� �����������
	$filter_divdb[1] = " checked "; //�Ƿ���� div
	$filter_spandb[1] = " checked "; //�Ƿ���� span
	$filter_displaynonedb[1] = " checked "; //�Ƿ���� ���ɼ�Ԫ��
	$filter_tabledb[1] = " checked "; //�Ƿ���� table
	$filter_imgdb[1] = " checked "; //�Ƿ���� img
	$filter_strongdb[1] = " checked "; //�Ƿ���� strong��b
	$filter_adb[1] = " checked "; //�Ƿ���� a
	$filter_formatdb[1] = " checked "; //�Ƿ��ʽ��html����
	$Temp_city_fid = select_where("{$pre}city", "'postdb[city_id]'  onChange=\"choose_where('getzone',this.options[this.selectedIndex].value,'','1','')\"", $save_rule[city_id]);

	hack_admin_tpl('edit_saverule');
} elseif ($gaction == "edit_saverule" && $Apower[sgt_grule]) {
	if (!$postdb[fid]) {
		showmsg("��ѡ�������Ŀ");
	} 
	$save_rule[fid] = $postdb[fid];

	$save_rule[file_dir] = filtrate($save_rule[file_dir]); //����ļ�Ŀ¼                
	// �����û�������
	if ($save_rule[saveuname]) {
		$urs = $userDB -> get_info($save_rule[saveuname], 'name');
	} 
	$save_rule[saveuname] = $urs[username]?$urs[username]:$userdb[username]; 
	// ������ϸ����
	$save_rule[city_id] = $postdb[city_id];
	$save_rule[zone_id] = $postdb[zone_id];
	$save_rule[street_id] = $postdb[street_id];

	$save_rule = addslashes(serialize($save_rule));

	$db -> query("UPDATE {$pre}sgt_grule SET  sort='$save_rule[fid]',ifauto='$ifauto',save_rule='$save_rule' WHERE id='$id'");

	if ($testgather) {
		jump("�����ĵȴ�,�Ȳɼ�����,���ٵ��ѡ����Բɼ�", "index.php?lfj=$lfj&gaction=gather_title&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&testgather=$testgather", 1);
	} 
	if ($autogather) {
		jump("�����ĵȴ�,�ɼ����ڽ���...", "index.php?lfj=$lfj&gaction=autogather&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&testgather=$testgather", 1);
	} 

	jump("�޸ĳɹ�", "index.php?lfj=$lfj&job=list", 1);
} elseif ($gaction == "gather_title" && $Apower[sgt_grule]) {
	unset($htmlcode);
	$rsdb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'");
	$fixsystem = $rsdb[fixsystem]; //���ģ��
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
		echo("�ɼ�ʧ��<br><br><br><br><br><br><br><br><br><br>"); 
		// exit;
	} 
	// UTF8->GBK
	if ($rsdb[charset_type] == 1) {
		require_once($WEB_PATH . "inc/class.chinese.php");
		$cnvert = new Chinese("UTF8", "GB2312", $code, $WEB_PATH . "./inc/gbkcode/");
		$code = $cnvert -> ConvertIT();
	} 
	// ��ͷ����
	if ($rsdb[list_begin_preg]) {
		$htmlcode = $code; //�����ⲿ�������ı����Ƚ�ͳһ
		include($WEB_PATH . "cache/{$cachepage}gather_list.begin_preg.php");
		$code = $htmlcode;
	} 
	// ��ȡ��ĳ���ַ���ʼ����β������
	if ($rsdb[list_begin_code]) {
		$code = strstr($code, $rsdb[list_begin_code]);
	} 
	// ȥ��ĳ���ַ����������
	if ($rsdb[list_end_code]) {
		$end_content = strstr($code, $rsdb[list_end_code]);
		$code = str_replace($end_content, "", $code);
	} 
	// �滻һЩ�ַ�
	if ($rsdb[title_replace_word]) {
		$detail = explode("\r\n", $rsdb[title_replace_word]);
		foreach($detail AS $key => $value) {
			list($oldword, $newword) = explode("|", $value);
			$code = str_replace($oldword, $newword, $code);
		} 
	} 
	// �����߼��ɼ��������ֹ���
	if ($assistant == 4) {
		$show_content = $code;
		include_once(dirname(__FILE__) . "/inc/$fixsystem.assistant.php");
		hack_admin_tpl('assistant');
		exit;
	} 
	// �û��Զ�������
	if ($rsdb[title_rule]) {
		// �ѿհ׶�ȥ��,���㴦��
		$rsdb[title_rule] = clean_blank($rsdb[title_rule]);
		$code = clean_blank($code); 
		// echo $code;exit;
		// ��ȡ������Ĺ�������
		preg_match_all("/\{(.*?)\}/is", $rsdb[title_rule], $array); 
		// ��ȡ����
		foreach($array[1] AS $key => $value) {
			if (!ereg("^NO", $value) && !ereg("^\*", $value)) {
				$detail = explode("=", $value);
				$ruledb[++$key] = $detail[0];
			} 
		} 
		// ��ȡ�������ʹ�õĹ���
		$rule = get_rule($rsdb[title_rule]); 
		// �Բɼ������ݸ����������У��
		preg_match_all("/$rule/is", $code, $array2); 
		// ��ȡ���õ�����
		foreach($ruledb AS $key => $value) {
			foreach($array2[$key] AS $key2 => $value2) {
				$value2 = str_replace("\\", "-", $value2); // �ݴ���
				$listdb[$value][] = addslashes(strip_tags($value2, "")); //��������ɼ�   
				// $listdb[$value][] = $value2 ;
			} 
		} 
		// url���µ�ַ����Ҫ�е� ���м��ݴ���
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
			$title = trim($listdb[title][$key_content]); //������ո�����ȡ����title
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
		// ������URL�в��ܰ����е��ַ�
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
		// URL�б�������е��ַ�
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
		// ���ⲻ��С�ڶ�����
		if ($rsdb[title_minleng]) {
			if (strlen($title) < $rsdb[title_minleng] + 1) {
				unset($url, $title);
			} 
		} 
		// �����еĵ�ַҪ�滻
		if ($rsdb[link_replace_word]) {
			$__detail = explode("\r\n", $rsdb[link_replace_word]);
			foreach($__detail AS $__key => $__value) {
				$__de = explode("|", $__value);
				$url = str_replace($__de[0], $__de[1], $url);
			} 
		} 
		// �Ե�ַ�������Խ��д���
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
	// ��β����
	if ($rsdb[list_end_preg]) {
		$htmlcode = $writefile; //�����ⲿ�������ı����Ƚ�ͳһ
		include($WEB_PATH . "cache/{$cachepage}gather_list.end_preg.php");
		$writefile = $htmlcode; //�����ⲿ�������ı����Ƚ�ͳһ
	} 
	write_file($WEB_PATH . "cache/{$cachepage}gather_title.php", "\r\n" . $writefile, 'a');
	$page++;

	if ($urldb[$page]) {
		unset($urldb);
		include($WEB_PATH . "cache/{$cachepage}gather_title.php");
		echo "$listurl<br>���ڲɼ���[{$page}]ҳ�ı�����������ַ,���Ժ�...<hr>";
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
	$save_rule[saveuname] = $username = $save_rule[saveuname]?$save_rule[saveuname]:$userdb[username]; //���÷������»�Ա�û���
	$file_dir = $save_rule[file_dir];
	$save_getfiledb[1] = " checked "; //�Ƿ��ļ����ػ�
	$Temp_city_fid = select_where("{$pre}city", "'postdb[city_id]'  onChange=\"choose_where('getzone',this.options[this.selectedIndex].value,'','1','')\"", $save_rule[city_id]);

	if ($ruledb[type] == "jump") {
		$msg = "ע��:��ǰ�����ļ����õĲ���:����������ת���ⲿ��ַ,ʹ������󲿷���Ч";
	} elseif ($ruledb[type] == "iframe") {
		$msg = "ע��:��ǰ�����ļ����õĲ���:�����������ⲿ��ַ,���ƴ��졢�滢,ʹ������󲿷���Ч";
	} 
	if ($testgather) {
		$autosub = "autosub();";
	} 
	include($WEB_PATH . "cache/{$cachepage}gather_title.php");

	hack_admin_tpl('list_title');
} elseif ($gaction == "list_title" && $Apower[sgt_grule]) {
	$rsdb = $db -> get_one("SELECT * FROM {$pre}sgt_grule WHERE id='$id'"); 
	// ����ɼ������б����򡢵������ֶ��ɼ������Ʋɼ�������
	unset($urldb, $UT);
	include($WEB_PATH . "cache/{$cachepage}gather_title.php");

	$save_rule = $rsdb[save_rule];
	$save_rule = unserialize($save_rule);
	$ifReverse = $save_rule[ifReverse];

	if (!$save_rule[ifReverse]) { // ��ɼ���վ˳����ͬ
		$num = count($urldb)-1;
		for($i = 0;$i <= $num; $i++) {
			if ($postdb[$i]) {
				$UT[] = "\$urldb[]='{$urldb[$i]}';";
			} 
		} 
	} else { // ��ɼ���վ˳���෴������ɼ���
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
	$fixsystem = $rsdb[fixsystem]; //���ģ��
	
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
	// $morepage����0ʱ.�����ҳ
	list($curl, $title, $morepage) = explode("\t", $urldb[$page]);
	if (!$urldb) {
		if ($nextgid) {
			$nextgid_page = intval($nextgid_page);
			$nextgid_page++;
			@include($WEB_PATH . "cache/{$cachepage}gather_giddb.php");
			$nextgid = $giddb[$nextgid_page];
			jump("<br><br><font color='red'>�� $nextgid_page ���ɼ�����,�ɼ�ʧ��! <br> �޷���ȡԶ�������б�,��������Ĺ�������;��ʱ��Ҳ�����ǲɼ�Ŀ��վ��������,��Ҫȥ�����������!</font><br><br>; 1��������һ���ɼ����񡭡�", "index.php?lfj=$lfj&gaction=autogather&id=$nextgid&nextgid_page=$nextgid_page&autogather=$autogather&cachepage=$cachepage", 1);
		} else {
			jump("<br><br><font color='red'>�޷���ȡԶ�������б�,��������Ĺ�������;��ʱ��Ҳ�����ǲɼ�Ŀ��վ��������,��Ҫȥ�����������!������ع����б���</font><br><br>", "index.php?lfj=$lfj&job=list", 10);
			exit;
		} 
	} 

	if (!$show_content = LaneLead_GetContents($curl)) {
		$db -> query("UPDATE {$pre}sgt_grule SET  lastgathertime='$timestamp',lastgatherstatus=0,lastgathernum=0 WHERE id='$id'"); //�ɼ�ʧ�ܣ�д��ʧ��״̬
		echo("��������ȡ����Զ���ļ���Ϣ,����ɼ�ʧ��$curl<br><br><br><br><br><br><br><br><br><br>"); 
		// exit;
	} 
	// UTF8->GBK
	if ($rsdb[charset_type] == 1) {
		require_once($WEB_PATH . "inc/class.chinese.php");
		$cnvert = new Chinese("UTF8", "GB2312", $show_content, $WEB_PATH . "./inc/gbkcode/");
		$show_content = $cnvert -> ConvertIT();
	} 

	if ($rsdb[type] == 'iframe') { // �����滢
		$iframeurl = $curl;
	} else {
		// ��ͷ��������
		if ($rsdb[show_begin_preg]) {
			$htmlcode = $show_content;
			include($WEB_PATH . "cache/{$cachepage}gather_show.begin_preg.php");
			$show_content = $htmlcode;
		} 
		// ��һƪ���¶�ҳ�Ĵ���,ֻ���ڵ�һҳ��ʱ����.�ڶ�ҳ�Ͳ���Ҫ��
		if ($rsdb[show_morepage] && !$morepage) {
			$i = 1;
			unset($moreurl_db);
			do {
				$i++; 
				// ����ҳ���һҳ�Ĳ�֮ͬ�����滻�õ���ҳ����ʵ��ַ
				if ($rsdb[show_firstpage]) {
					$nexturl = str_replace($rsdb[show_firstpage], str_replace("[page]", $i, $rsdb[show_morepage]), $curl);
				} else {
					$nexturl = preg_replace("/(.*)([^\d]+)([\d]*)$/is", "\\1\\2", $curl) . str_replace("[page]", $i, $rsdb[show_morepage]);
				} 
				// ��һЩ�������վ����.�����һҳ��index.htm�ڶ�ҳ��Ȼ��index_1.htm
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
				// ��ԭҪ�ɼ������������´���,��Ϊ�����˷�ҳ
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
		// ��������ǰ����Ч����
		if ($rsdb[show_begin_code]) {
			$show_content = strstr($show_content, $rsdb[show_begin_code]);
			$num_1 = strlen($rsdb[show_begin_code]);
			$num_2 = strlen($show_content);
			$show_content = substr($show_content, $num_1, $num_2);
		} 
		// �������º����Ч����
		if ($rsdb[show_end_code]) {
			$end_content = strstr($show_content, $rsdb[show_end_code]);
			$show_content = str_replace($end_content, "", $show_content);
		} 

		$show_content = clean_blank($show_content); 
		// �����߼��ɼ��������ֹ���
		if ($assistant == 4) {
			include_once(dirname(__FILE__) . "/inc/$fixsystem.assistant.php");
			hack_admin_tpl('assistant');
			exit;
		} 
		// �û��Զ�������,������������
		if ($rsdb[content_rule]) {
			// �ѿհ׶�ȥ��,���㴦��
			$rsdb[content_rule] = clean_blank($rsdb[content_rule]); 
			// ��ȡ������Ĺ�������
			preg_match_all("/\{(.*?)\}/is", $rsdb[content_rule], $array); 
			// ��ȡ����
			foreach($array[1] AS $key => $value) {
				if (!ereg("^NO", $value) && !ereg("^\*", $value)) {
					$detail = explode("=", $value);
					$ruledb[++$key] = $detail[0];
				} 
			} 
			// ��ȡ�������ʹ�õĹ���
			$rule = get_rule($rsdb[content_rule]); 
			// �Բɼ������ݸ����������У��
			preg_match_all("/$rule/is", $show_content, $array2); 
			// ��ȡ���õ�����
			foreach($ruledb AS $key => $value) {
				foreach($array2[$key] AS $key2 => $value2) {
					if (!eregi("(content|telephone|picurl|imageurl)", $value) ) {
						$value2 = strip_tags($value2, "");
					} 
					$value2 = str_replace("\\", "-", $value2); // �ݴ���
					$listdb[$value][] = $value2; 
				} 
			} 
			// print_r($listdb);exit;
			// ���û��Զ���ı�����ȡ����
			foreach($listdb AS $key => $value) {
				$$key = $value[0];
				$gather_module_valeDB[$key] = $value[0]; //Ϊ����ģ���ֶβɼ�������
			} 
			$show_content = $content; 
			// ֧��ʮ���Զ������ݷָ�
			for($gci = 1;$gci <= 10;$gci++) {
				$var_content = "content" . $gci;
				if ($$var_content) {
					$show_content = $show_content . $$var_content;
				} 
			} 
		} 
		// echo $show_content;exit;
		// ���������в��뿴��������
		if ($rsdb[show_replace_word]) {
			$detail = explode("\r\n", $rsdb[show_replace_word]);
			foreach($detail AS $key => $value) {
				list($oldword, $newword) = explode("|", $value);
				$show_content = str_replace($oldword, $newword, $show_content);
			} 
		} 
		// ���½�β��������
		if ($rsdb[show_end_preg]) {
			$htmlcode = $show_content;
			include($WEB_PATH . "cache/{$cachepage}gather_show.end_preg.php");
			$show_content = $htmlcode;
		} 
	} 
	// ��ȡ�ļ�.�ļ��и��,ͼƬһ��src=,����Ĭ����ͼƬ
	if (!$rsdb[file_explode]) {
		$rsdb[file_explode] = 'src=';
		$show_content = str_replace("SRC=", "src=", $show_content);
		if (!$rsdb[file_type] && $rsdb[fixsystem] == 'article') {
			$rsdb[file_type] = "jpg|gif|png";
		} 
	} 
	$show_content = str_replace("\\", "/", $show_content); //��б��ת��
	$Filedb = getfileUrl($rsdb, $show_content, $curl); 
	// ��β����,����ֱ��ͨ�������ȡ�ļ���ַ,�������ȡ�ļ��Ļ�.���������н�β�������е���ͬ
	if ($rsdb[show_endfile_preg]) {
		$htmlcode = $show_content;
		include($WEB_PATH . "cache/{$cachepage}gather_show.endfile_preg.php");
		$show_content = $htmlcode;
	} 
	// �ļ����ػ�
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
	// �ɼ������ͼƬ
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
	// ��ʽ�����뿪ʼ
	include(dirname(__FILE__) . "/inc/system.filter.php");
	$content = $show_content; 
	// �����ĸ�ϵͳ����ѡ��
	if (!$fixsystem || !file_exists(dirname(__FILE__) . "/inc/$fixsystem.system.php")) {
		$fixsystem = "article";
	} 
	// �����Ե�ʱ��.���
	if (!$testgather && $gather_module_valeDB) {
		include(dirname(__FILE__) . "/inc/$fixsystem.system.php");
	} 

	$page++;
	if ($urldb[$page]) {
		$p = $page-1; 
		// ֻ��ʾ���ַ����û��鿴�ɼ����
		// $testgather || $content = get_word($content, 1000);
		// $content = filtrate($content);
		echo "���ڲɼ���[$page]ҳ,�����ĵȴ�...<A HREF={$urldb[$p]} target=_blank>{$urldb[$p]}</A><hr>";
		if ($gather_module_valeDB) {
			// ֻ��ʾ���ַ����û��鿴�ɼ����
			$testgather || $content = get_word($content, 500);
			$content = filtrate($content);
			if (!$testgather) {
				echo "$content";
			} else {
				LaneLead_dump($gather_module_valeDB);
				sleep(1); //��ͣ1�룬�Ա�鿴�ɼ�����
			} 
		} else {
			$failpage = intval($failpage);
			echo "<br><br><font color='red'>�޷���ȡԶ����������,��������Ĺ�������;��ʱ��Ҳ�����ǲɼ�Ŀ��վ��������,��Ҫȥ�����������!</font> �ɼ����������С���";
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
				jump("���Բɼ����,ģ�� <font color='green'>�ɹ��ɼ��� {$num} ƪ</font>, <font color='red'>ʧ�� {$failpage} ƪ</font>,��ʵû�������ݿ�", "index.php?lfj=$lfj&job=list", 20);
			} else {
				$db -> query("UPDATE {$pre}sgt_grule SET  lastgathertime='$timestamp',lastgatherstatus=1,lastgathernum='$num' WHERE id='$id'"); //�ɼ��ɹ���д��ɹ�״̬
				jump("�ɼ����,<font color='green'>�ɹ��ɼ��� {$num} ƪ</font>, <font color='red'>ʧ�� {$failpage} ƪ</font>", "index.php?lfj=$lfj&job=list", 10);
			} 
		} else {
			unset($giddb);
			$num = count($urldb) - $failpage;
			$db -> query("UPDATE {$pre}sgt_grule SET  lastgathertime='$timestamp',lastgatherstatus=1,lastgathernum='$num' WHERE id='$id'"); //�ɼ��ɹ���д��ɹ�״̬
			$nextgid_page = intval($nextgid_page);
			$nextgid_page++;
			@include($WEB_PATH . "cache/{$cachepage}gather_giddb.php");
			$nextgid = $giddb[$nextgid_page];
			if ($nextgid) {
				jump("�� $nextgid_page ���ɼ�����,�ɼ����,<font color='green'>�ɹ��ɼ��� {$num} ƪ</font>, <font color='red'>ʧ�� {$failpage} ƪ</font>; 3��������һ���ɼ����񡭡�", "index.php?lfj=$lfj&gaction=autogather&id=$nextgid&nextgid_page=$nextgid_page&autogather=$autogather&cachepage=$cachepage", 3);
			} else {
				jump("�����ɼ����,������زɼ������б�", "index.php?lfj=$lfj&job=list", 10);
			} 
		} 
	} 
} elseif ($job == "autogather" && $Apower[sgt_grule]) {
	@ignore_user_abort(true);
	@set_time_limit(0);
	$gatherid = $id;
	require_once("autogather.php");
	die('��ִ��');
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
		echo("�ɼ�ʧ��<br><br><br><br><br><br><br><br><br><br>"); 
		// exit;
	} 
	// UTF8->GBK
	if ($rsdb[charset_type] == 1) {
		require_once($WEB_PATH . "inc/class.chinese.php");
		$cnvert = new Chinese("UTF8", "GB2312", $code, $WEB_PATH . "./inc/gbkcode/");
		$code = $cnvert -> ConvertIT();
	} 
	// ��ͷ����
	if ($rsdb[list_begin_preg]) {
		$htmlcode = $code; //�����ⲿ�������ı����Ƚ�ͳһ
		include($WEB_PATH . "cache/{$cachepage}gather_list.begin_preg.php");
		$code = $htmlcode;
	} 
	// ��ȡ��ĳ���ַ���ʼ����β������
	if ($rsdb[list_begin_code]) {
		$code = strstr($code, $rsdb[list_begin_code]);
	} 
	// ȥ��ĳ���ַ����������
	if ($rsdb[list_end_code]) {
		$end_content = strstr($code, $rsdb[list_end_code]);
		$code = str_replace($end_content, "", $code);
	} 
	// �滻һЩ�ַ�
	if ($rsdb[title_replace_word]) {
		$detail = explode("\r\n", $rsdb[title_replace_word]);
		foreach($detail AS $key => $value) {
			list($oldword, $newword) = explode("|", $value);
			$code = str_replace($oldword, $newword, $code);
		} 
	} 
	// �û��Զ�������
	if ($rsdb[title_rule]) {
		// �ѿհ׶�ȥ��,���㴦��
		$rsdb[title_rule] = clean_blank($rsdb[title_rule]);
		$code = clean_blank($code); 
		// echo $code;exit;
		// ��ȡ������Ĺ�������
		preg_match_all("/\{(.*?)\}/is", $rsdb[title_rule], $array); 
		// ��ȡ����
		foreach($array[1] AS $key => $value) {
			if (!ereg("^NO", $value) && !ereg("^\*", $value)) {
				$detail = explode("=", $value);
				$ruledb[++$key] = $detail[0];
			} 
		} 
		// ��ȡ�������ʹ�õĹ���
		$rule = get_rule($rsdb[title_rule]); 
		// �Բɼ������ݸ����������У��
		preg_match_all("/$rule/is", $code, $array2); 
		// ��ȡ���õ�����
		foreach($ruledb AS $key => $value) {
			foreach($array2[$key] AS $key2 => $value2) {
				$value2 = str_replace("\\", "-", $value2); // �ݴ���
				$listdb[$value][] = addslashes(strip_tags($value2, "")); //��������ɼ�   
				// $listdb[$value][] = $value2 ;
			} 
		} 
		// url���µ�ַ����Ҫ�е� ���м��ݴ���
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
			$title = trim($listdb[title][$key_content]); //������ո�����ȡ����title
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
		// ������URL�в��ܰ����е��ַ�
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
		// URL�б�������е��ַ�
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
		// ���ⲻ��С�ڶ�����
		if ($rsdb[title_minleng]) {
			if (strlen($title) < $rsdb[title_minleng] + 1) {
				unset($url, $title);
			} 
		} 
		// �����еĵ�ַҪ�滻
		if ($rsdb[link_replace_word]) {
			$__detail = explode("\r\n", $rsdb[link_replace_word]);
			foreach($__detail AS $__key => $__value) {
				$__de = explode("|", $__value);
				$url = str_replace($__de[0], $__de[1], $url);
			} 
		} 
		// �Ե�ַ�������Խ��д���
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
	// ��β����
	if ($rsdb[list_end_preg]) {
		$htmlcode = $writefile; //�����ⲿ�������ı����Ƚ�ͳһ
		include($WEB_PATH . "cache/{$cachepage}gather_list.end_preg.php");
		$writefile = $htmlcode; //�����ⲿ�������ı����Ƚ�ͳһ
	} 

	write_file($WEB_PATH . "cache/{$cachepage}gather_title.php", "\r\n" . $writefile, 'a');
	$page++;

	if ($urldb[$page]) {
		unset($urldb);
		include($WEB_PATH . "cache/{$cachepage}gather_title.php");
		echo "$listurl<br>���ڲɼ���[{$page}]ҳ�ı�����������ַ,���Ժ�...<hr>";
		foreach($urldb AS $key => $value) {
			if ($key > 10) {
				break;
			} 
			echo "$value<br>";
		} 
		echo "<META HTTP-EQUIV=REFRESH CONTENT='$refreshtime;URL=index.php?lfj=$lfj&gaction=$gaction&id=$id&nextgid_page=$nextgid_page&autogather=$autogather&showurl=$showurl&testgather=$testgather&page=$page&cachepage=$cachepage'>";
		exit;
	} else {
		// ����ɼ������б����򡢵������ɼ��������ƴ���
		unset($urldb, $UT);
		include($WEB_PATH . "cache/{$cachepage}gather_title.php");

		$save_rule = $rsdb[save_rule];
		$save_rule = unserialize($save_rule);
		$ifReverse = $save_rule[ifReverse];
		$limitNum = $save_rule[limitNum]?$save_rule[limitNum]:count($urldb);

		$k = 0;
		if (!$save_rule[ifReverse]) { // ��ɼ���վ˳����ͬ
			$num = count($urldb)-1;
			for($i = 0;$i <= $num; $i++) {
				if ($limitNum <= $k) {
					break;
				} 
				$UT[] = "\$urldb[]='{$urldb[$i]}';";
				$k++;
			} 
		} else { // ��ɼ���վ˳���෴������ɼ���
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
	die('��ִ��');
} elseif ($gaction == "gather_all_1" && $Apower[sgt_grule]) {
	if (!$iddb) {
		showmsg("����ѡ��һ����������");
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
	jump("�����ɼ��ƻ����óɹ�,3����Զ���ʼ�����ɼ�����", "index.php?lfj=$lfj&gaction=autogather&id=$nextgid&nextgid_page=$nextgid_page&autogather=$autogather&cachepage=$cachepage", 3);
} elseif ($gaction == "gather_all_2" && $Apower[sgt_grule]) {
	$rows = 20;
	$cachepages = LaneLead_getcachepages("{$pre}sgt_grule", " WHERE ifauto=1 ", $rows);
	echo "������ж��߳��Զ������ɼ����ɼ������Ҫ�ֶ��رո�ҳ��" . "<br><hr>";
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
		echo "<hr>���ǵ� <font color='red'>$cachepage</font> �����̲ɼ�����<br>";
		echo "<iframe src='index.php?lfj=$lfj&gaction=autogather&id=$nextgid&nextgid_page=$nextgid_page&autogather=$autogather&cachepage=$cachepage' height='200' width='95%'></iframe><br><br>"; 
		// jump("�����ɼ��ƻ����óɹ�,3����Զ���ʼ�����ɼ�����", "index.php?lfj=$lfj&gaction=autogather&id=$nextgid&nextgid_page=$nextgid_page&autogather=$autogather&cachepage=$cachepage", 3);
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
		$rs[save_sortname] = $fidrs[name]?$fidrs[name]:'δ����';

		$rs[lastgatherstatus] = $rs[lastgatherstatus]?'<font color="green">�ɹ�(' . $rs[lastgathernum] . ')</font>':'<font color="red">ʧ��</font>';

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
	$sqlcode = str_replace('p8_gather_rule', "{$pre}sgt_grule", $sqlcode); //���ݾɰ�
	$sqlcode = str_replace('qb_gather_rule', "{$pre}sgt_grule", $sqlcode); //���ݾɰ�
	$sqlcode = str_replace('ll_gather_rule', "{$pre}sgt_grule", $sqlcode);
	$db -> query($sqlcode);
	jump("����ղ�ҳ��û�б���,�ǹ�ϲ��,����ɹ�", "index.php?lfj=$lfj&job=list", 1);
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
	jump("ɾ���ɹ�", "index.php?lfj=$lfj&job=list", 1);
} elseif ($job == "showfid" && $Apower[sgt_grule]) {
	include_once(dirname(__FILE__) . "/inc/system.showfid.php");
} elseif ($job == "getzone" && $Apower[sgt_grule]) {
	include_once(dirname(__FILE__) . "/inc/system.getzone.php");
} elseif ($job == "getstreet" && $Apower[sgt_grule]) {
	include_once(dirname(__FILE__) . "/inc/system.getstreet.php");
} 
// �����Ƿ������
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
			showerr("��Ѱ����ֻ�ܴ���10������");
		} 
	} 
	$db -> query("INSERT INTO {$pre}sgt_gsort (name,fup,class,type) VALUES ('$name','0','1','1') ");
	jump("�����ɹ�", $FROMURL);
} elseif ($job == "editsort" && $Apower[sgt_gsort]) {
	$rsdb = $db -> get_one("SELECT * FROM {$pre}sgt_gsort WHERE fid='$fid'");

	hack_admin_tpl('editsort');
} elseif ($gaction == "editsort" && $Apower[sgt_gsort]) {
	$db -> query("UPDATE {$pre}sgt_gsort SET name='$postdb[name]' WHERE fid='$fid' ");
	jump("�޸ĳɹ�", "index.php?lfj=$lfj&job=list");
} elseif ($gaction == "delete" && $Apower[sgt_gsort]) {
	$db -> query(" DELETE FROM `{$pre}sgt_gsort` WHERE fid='$fid' ");
	jump("ɾ���ɹ�", $FROMURL);
} elseif ($gaction == "editlist" && $Apower[sgt_gsort]) {
	foreach($order AS $key => $value) {
		$db -> query("UPDATE {$pre}sgt_gsort SET list='$value' WHERE fid='$key' ");
	} 
	jump("�޸ĳɹ�", "$FROMURL", 1);
} elseif ($gaction == "deletelist" && $Apower[sgt_gsort]) {
	if (!$iddb) {
		showmsg("����ѡ��һ����������");
	} 
	foreach($iddb AS $key => $value) {
		$db -> query(" DELETE FROM `{$pre}sgt_grule` WHERE id='$key' ");
	} 
	jump("����ɾ���ɹ�", "$FROMURL", 1);
} 

?>