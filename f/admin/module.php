<?php
function_exists('html') OR exit('ERR');

ck_power('module');

$linkdb["ģ�����"]="$admin_path&job=listsort";
if($id){
	$linkdb["ȫ���ֶ�"]="$admin_path&job=editsort&id=$id";
	$linkdb["�����ֶ�"]="$admin_path&job=addfield&id=$id";
	$linkdb["����ģ��"]="$admin_path&job=tpl&id=$id";
}

//�г�����ģ��
if($job=="listsort")
{
	if(!table_field("{$_pre}module","template")){
		$db->query("ALTER TABLE `{$_pre}module` ADD `template` TEXT NOT NULL");
	}
	if($page<1){
		$page=1;
	}
	$rows=100;
	$min=($page-1)*$rows;
	$SQL=" WHERE 1 ";
	if($sort_id ){
		$SQL .=" AND A.sort_id='$sort_id' ";
	}
	$showpage=getpage("{$_pre}module A","$SQL","$admin_path&job=$job&sort_id=$sort_id","$rows");
	$query = $db->query("SELECT A.*,B.sort_name FROM {$_pre}module A LEFT JOIN {$_pre}module_sort B ON A.sort_id=B.sort_id $SQL ORDER BY A.sort_id ASC,A.list DESC LIMIT $min,$rows");
	while($rs = $db->fetch_array($query)){
		$rss=$db->get_one("SELECT count(*) AS NUM FROM {$_pre}sort WHERE mid='$rs[id]' ");
		$rs[NUM]=$rss[NUM];
		$listdb[]=$rs;
	}
	$selectsortid="<select name='sort_id'><option value=''>��ѡ��</option>";
	$query = $db->query("SELECT * FROM {$_pre}module_sort");
	while($rs = $db->fetch_array($query)){
		$selectsortid.="<option value='$rs[sort_id]'>$rs[sort_name]</option>";
	}
	$selectsortid.="</select>";

	get_admin_html('sort');
}
elseif($action=="editlist")
{
	foreach( $order AS $key=>$value){
		$db->query("UPDATE {$_pre}module SET list='$value' WHERE id='$key' ");
	}
	write_module_cache();
	refreshto("$FROMURL","�޸ĳɹ�",1);
}
elseif($action=="addsort")
{
	unset($SQL);
	if( $dbcharset && mysql_get_server_info() > '4.1' ){
		$SQL=" DEFAULT CHARSET=$dbcharset ";
	}

	if($fid){
		$type=0;
	}else{
		$type=1;
	}
	$field_db[content]=array(
		'title'=>'����',
		'field_name'=>'content',
		'form_type'=>'textarea',
		'field_inputwidth'=>'400',
		'field_inputheight'=>'50',
		'field_type'=>'mediumtext'
		);
	$field_db[sortid]=array(
		'title'=>'���',
		'field_name'=>'sortid',
		'field_type'=>'int',
		'field_leng'=>'3',
		'form_type'=>'radio',
		'form_set'=>"1|���һ\r\n2|����\r\n3|�����",
		'listshow'=>'1',
		'listfilter'=>'1',
		'search'=>'1'
		);

	if($ifdp){
		$fendb[fen1][name]="����";
		$fendb[fen2][name]="����";
		$fendb[fen3][name]="����";
		$fendb[fen4][name]="��λ";
		$fendb[fen5][name]="ϲ���̶�";

		$fendb[fen1][set]="1=��\r\n2=һ��\r\n3=��\r\n4=�ܺ�\r\n5=�ǳ���";
		$fendb[fen2][set]="1=��\r\n2=һ��\r\n3=��\r\n4=�ܺ�\r\n5=�ǳ���";
		$fendb[fen3][set]="1=��\r\n2=һ��\r\n3=��\r\n4=�ܺ�\r\n5=�ǳ���";
		$fendb[fen4][set]="1=����\r\n2=����\r\n3=��\r\n4=�ܹ�";
		$fendb[fen5][set]="1=��ϲ��\r\n2=����ν\r\n3=ϲ��\r\n4=��ϲ��";
		$config2=addslashes(serialize($fendb));
		$array[moduleSet]=array('useMap'=>1);
	
		$field_db[sortid]=array(
			'title'=>'�˾�����',
			'field_name'=>'sortid',
			'field_type'=>'int',
			'field_leng'=>'3',
			'form_type'=>'radio',
			'form_set'=>"1|30Ԫ����\r\n2|30~50Ԫ\r\n3|50~100Ԫ\r\n4|100~150Ԫ\r\n5|150~200Ԫ\r\n6|200~300Ԫ\r\n7|300Ԫ����",
			'listshow'=>'1',
			'listfilter'=>'1',
			'search'=>'1'
		);

		$field_db[sortid2]=array(
			'title'=>'�˾�����',
			'field_name'=>'sortid2',
			'field_type'=>'int',
			'field_leng'=>'3',
			'form_type'=>'radio',
			'form_set'=>"1|��ͥ�ۻ�\r\n2|���Գ�\r\n3|����Լ��\r\n4|����Ǣ̸\r\n5|���Ѿۻ�\r\n6|�������\r\n7|���;ۻ�",
			'listshow'=>'1',
			'listfilter'=>'1',
			'search'=>'1'
		);

		$sortid2_sql="`sortid2` tinyint(3) NOT NULL default '0',";
		$sortid2_sqlkey=",KEY `sortid2` (`sortid2`)";
	}
	$config=addslashes(serialize($array));
	$db->query("INSERT INTO {$_pre}module (name,config,sort_id,ifdp,config2) VALUES ('$name','$config','$sort_id','$ifdp','$config2') ");
	$id=$db->insert_id();

	foreach( $field_db AS $ar){
		$ar[mid]=$id;
		$sql_ar='';
		foreach($ar AS $key=>$value){
			$sql_ar[]="`$key`='$value'";
		}
		$sql=implode(",",$sql_ar);
		$db->query("INSERT INTO `{$_pre}field` SET $sql");
	}

	$SQL="CREATE TABLE `{$_pre}content_{$id}` (
		`rid` mediumint(7) NOT NULL auto_increment,
		`id` int(10) NOT NULL default '0',
		`fid` mediumint(7) NOT NULL default '0',
		`uid` mediumint(7) NOT NULL default '0',
		`content` mediumtext NOT NULL,
		`sortid` tinyint(3) NOT NULL default '0',	
		$sortid2_sql
		PRIMARY KEY  (`rid`),
		KEY `fid` (`fid`),
		KEY `id` (`id`),
		KEY `uid` (`uid`),
		KEY `sortid` (`sortid`) $sortid2_sqlkey
		) TYPE=MyISAM {$SQL} AUTO_INCREMENT=1 ;";
	$db->query($SQL);
	$Module_db->make_template($id);
	write_module_cache();
	refreshto("$admin_path&job=editsort&id=$id","�����ɹ�");
}

//�г������ֶ���Ϣ
elseif($job=="editsort")
{
	$rsdb = $Module_db->module_info($id);
	$listdb = $Module_db->list_field($id);

	get_admin_html('editsort');
}

elseif($action=="editsort")
{
	$db->query(" UPDATE {$_pre}module SET name='$name' WHERE id='$id' ");
	write_module_cache();
	refreshto("$FROMURL","�޸ĳɹ�");
}
elseif($action=="editorder")
{
	foreach( $postdb AS $key=>$value){
		$db->query("UPDATE {$_pre}field SET orderlist='$value' WHERE mid='$id' AND field_name='$key'");
	}

	write_module_cache();
	$Module_db->make_template($id);
	refreshto("$admin_path&job=editsort&id=$id","�޸ĳɹ�",10);
}
elseif($job=="editfield")
{
	$rsdb = $Module_db->module_info($id);
	$field_db = $Module_db->list_field($id);
	$_rs = $field_db[$field_name];

	if($_rs[field_name]=='content'){
		$readonly=" readony ";
	}
	$_rs[field_leng]<1 && $_rs[field_leng]='';
	$search[$_rs[search]]=" checked ";
	$mustfill[$_rs[mustfill]]=" checked ";
	$form_type[$_rs[form_type]]=" selected ";
	$field_type[$_rs[field_type]]=" selected ";
	$listshow[intval($_rs[listshow])]=" checked ";
	$listfilter[intval($_rs[listfilter])]=" checked ";
	$group_view = group_box("postdb[allowview]",explode(",",$_rs[allowview]));
	$group_post=group_box("postdb[allowpost]",explode(",",$_rs[allowpost]));
	$select_db = $Module_db->list_class("postdb[classid]",$_rs[classid]);

	get_admin_html('editfield');
}
elseif($action=="editfield")
{
	$Module_db->edit_field($id,$field_name,$postdb);
	$Module_db->make_template($id);
	write_module_cache();

	refreshto("$admin_path&job=editsort&id=$id","�޸ĳɹ�",1);
}
elseif($job=="addfield")
{
	$rsdb = $Module_db->module_info($id);

	$group_view = group_box("postdb[allowview]");
	$group_post = group_box("postdb[allowpost]");
	$_rs[field_type]='mediumtext';
	$field_type[$_rs[field_type]]=" selected ";
	$_rs[field_name]="my_".rand(1,999);
	$_rs[title]="�ҵ��ֶ�$_rs[field_name]";
	$mustfill[0]=$search[0]=' checked ';
	$listshow[intval($_rs[listshow])]=" checked ";
	$select_db = $Module_db->list_class("postdb[classid]",$_rs[classid]);

	get_admin_html('editfield');
}
elseif($action=="addfield")
{
	$Module_db->creat_field($id,$postdb);

	//��������ģ��
	$Module_db->make_template($id);

	write_module_cache();
	refreshto("$admin_path&job=editsort&id=$id",'�����ɹ�',10);
}
elseif($action=="delfield")
{
	$Module_db->delete_field($id,$field_name);
	//��������ģ��
	$Module_db->make_template($id);
	write_module_cache();
	refreshto($FROMURL,"ɾ���ɹ�");
}
elseif($job=='tpl')
{
	if($automaketpl){	//��������ģ��
		$page=intval($page);
		$rsdb=$db->get_one("SELECT * FROM {$_pre}module LIMIT $page,1 ");
		$id=$rsdb[id];	
		if(!$id){
			refreshto("$admin_path&job=listsort","ģ���������",3);
		}else{
			$Module_db->make_template($id);
			$page++;
			echo "��������ģ��:$rsdb[name]<META HTTP-EQUIV=REFRESH CONTENT='0;URL=$admin_path&job=$job&automaketpl=$automaketpl&page=$page'>";
			exit;
		}	
	}else{
		$Module_db->make_template($id);
		refreshto("$admin_path&job=listsort","ģ���������",1);
	}

}
elseif($action=="delete")
{
	$Module_db->delete_module($id);
	write_module_cache();
	refreshto("$admin_path&job=listsort","ɾ���ɹ�");
}
elseif($job=="editmodule")
{
	$rsdb=$db->get_one("SELECT * FROM {$_pre}module WHERE id='$id'");
	$array=unserialize($rsdb[config]);
	@extract($array[moduleSet]);
	$useMapDB[intval($useMap)]=' checked ';

	$allowpost=group_box("postdb[allowpost]",explode(",",$rsdb[allowpost]));

	$tpldb=unserialize($rsdb[template]);

	get_admin_html('editmodule');
}
elseif($action=="editmodule")
{
	$rsdb=$db->get_one("SELECT * FROM {$_pre}module WHERE id='$id' ");
	$array=unserialize($rsdb[config]);
	$array[moduleSet]=$postdb;
	$config=addslashes(serialize($array));
	foreach($tpldb  AS $key=>$value){
		if($value&&!is_file(ROOT_PATH.$value)&&!is_file(ROOT_PATH."template/default/$value")&&!is_file(ROOT_PATH."template/$webdb[style]/$value")){
			showerr("ģ���ļ�������:$value !");
		}
	}
	$template=addslashes(serialize($tpldb));
	$db->query(" UPDATE {$_pre}module SET name='$name',config='$config',template='$template' WHERE id='$id' ");
	write_module_cache();
	$Module_db->make_template($id);
	refreshto("$FROMURL","�޸ĳɹ�",1);
}
elseif($job=="setcomment")
{
	$rsdb=$db->get_one("SELECT * FROM {$_pre}module WHERE id='$id' ");
	$ifdianpin[intval($rsdb[comment_type])]=' checked ';
	$fendb=unserialize($rsdb[config2]);
	$fendb[fen1][name] || $fendb[fen1][name]="����";
	$fendb[fen2][name] || $fendb[fen2][name]="����";
	$fendb[fen3][name] || $fendb[fen3][name]="����";
	$fendb[fen4][name] || $fendb[fen4][name]="��λ";
	$fendb[fen5][name] || $fendb[fen5][name]="ϲ���̶�";
	$fendb[fen6][name] || $fendb[fen6][name]="������Χ";

	$fendb[fen1][set] || $fendb[fen1][set]="1=��\r\n2=һ��\r\n3=��\r\n4=�ܺ�\r\n5=�ǳ���";
	$fendb[fen2][set] || $fendb[fen2][set]="1=��\r\n2=һ��\r\n3=��\r\n4=�ܺ�\r\n5=�ǳ���";
	$fendb[fen3][set] || $fendb[fen3][set]="1=��\r\n2=һ��\r\n3=��\r\n4=�ܺ�\r\n5=�ǳ���";
	$fendb[fen4][set] || $fendb[fen4][set]="1=����\r\n2=����\r\n3=��\r\n4=�ܹ�";
	$fendb[fen5][set] || $fendb[fen5][set]="1=��ϲ��\r\n2=����ν\r\n3=ϲ��\r\n4=��ϲ��";
	$fendb[fen6][set] || $fendb[fen6][set]="��ͥ�ۻ�\r\n���Գ�\r\n����Լ��\r\n����Ǣ̸\r\n���Ѿۻ�\r\n�������\r\n���;ۻ�";

	get_admin_html('setcomment');
}
elseif($action=="setcomment")
{
	$config2=addslashes(serialize($fendb));
	$db->query("UPDATE {$_pre}module SET config2='$config2' WHERE id='$id' ");
	write_module_cache();
	refreshto($FROMURL,"�޸ĳɹ�",1);
}

function write_module_cache(){
	global $_pre,$db;
	$show='<?php unset($module_DB);'."\r\n";
	$query = $db->query("SELECT * FROM {$_pre}module ORDER BY list DESC");
	while($rs = $db->fetch_array($query)){
		unset($field_array);
		//�ֶ���Ϣ
		$query2 = $db->query("SELECT * FROM {$_pre}field WHERE mid='$rs[id]'");
		while($rs2 = $db->fetch_array($query2)){
			$field_array[$rs2[field_name]]=$rs2;
		}
		$rs[field]=$field_array;
		//
		$rs[config]=unserialize($rs[config]);
		$rs[config2]=unserialize($rs[config2]);

		$string=var_export($rs,true);

		$show.="\$module_DB[{$rs[id]}]=$string;\r\n";
		$show.="\$module_db[{$rs[id]}]=\"$rs[name]\";\r\n";
	}
	write_file(ROOT_PATH."data/module_db.php",$show.'?>');
}
?>