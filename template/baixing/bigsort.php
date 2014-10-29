<?php
unset($listdb);
//$rows=$fidDB[maxperpage]>0?$fidDB[maxperpage]:20;	//每页读取几条数据
$rows=20;
if(!$page){
	$page=1;
}
$min=($page-1)*$rows;

//分表后要特别处理
if($Fid_db[tableid]){
	$query = $db->query("SELECT SQL_CALC_FOUND_ROWS C.* FROM {$_pre}db C LEFT JOIN {$_pre}sort S ON C.fid=S.fid WHERE S.fup='$fidDB[fid]' AND C.city_id='$city_id' ORDER BY C.id DESC LIMIT $min,$rows");
	$RS=$db->get_one("SELECT FOUND_ROWS()");
	while($rs = $db->fetch_array($query)){
		$_erp=$Fid_db[tableid][$rs[fid]];
		$rs=$db->get_one("SELECT * FROM {$_pre}content$_erp WHERE id=$rs[id]");
		if(del_EndTimeInfo($rs)){	//自动删除过期信息
			continue;
		}
		
		
		
		
		$rs[picurl] && $rs[picurl]=tempdir($rs[picurl]);
		$rs[posttime]=date("m-d",$rs[posttime]);
		$listdb[]=$rs;
	}
}else{
	$query = $db->query("SELECT SQL_CALC_FOUND_ROWS C.* FROM {$_pre}content C LEFT JOIN {$_pre}sort S ON C.fid=S.fid WHERE S.fup='$fidDB[fid]' AND C.city_id='$city_id' ORDER BY C.list DESC LIMIT $min,$rows");
	$RS=$db->get_one("SELECT FOUND_ROWS()");
	while($rs = $db->fetch_array($query)){
		if(del_EndTimeInfo($rs)){	//自动删除过期信息
			continue;
		}
		$rs[content]=@preg_replace('/<([^>]*)>/is',"",$rs[content]);	//把HTML代码过滤掉
		$rs[content]=get_word($rs[full_content]=$rs[content],50);
		$rs[title]=get_word($rs[full_title]=$rs[title],$leng);
		if($rs['list']>$timestamp){
			$rs[cor]="$webdb[Info_TopColor]";
			$rs[tb]=" <img src='$webdb[www_url]/images/default/icotop.gif' border=0>";
		}elseif($rs['list']>$rs[posttime]){
			//置顶过期的信息,需要恢复原来发布日期以方便排序,放在后面
			$db->query("UPDATE {$_pre}content$_erp SET list='$rs[posttime]' WHERE id='$rs[id]'");
		}
		
		$rs[picurl] && $rs[picurl]=tempdir($rs[picurl]);
		$rs[posttime]=date("m-d",$rs[posttime]);
		$listdb[]=$rs;
	}
}

if($RS['FOUND_ROWS()']){
	$showpage=getpage("","","list.php?",$rows,$RS['FOUND_ROWS()']);
	$showpage=preg_replace("/list\.php\?&page=([0-9]+)/eis","get_info_url('',$fid,$city_id,$zone_id,$street_id,array($TempSearch_2'page'=>'\\1'))",$showpage);
}

//字段筛选
unset($TempSearch_2,$TempSearch_array,$seo_tile);
foreach($field_db AS $key=>$value){
	if($value[listfilter]){
		if($$key){	//SEO,title
			$detail=explode("\r\n",$value[form_set]);
			foreach($detail AS $_value){
				$detail2=explode("|",$_value);
				$detail2[1] || $detail2[1]=$detail2[0];
				if($detail2[0]==$$key){
					//$seo_tile.=" {$value[title]}{$detail2[1]}";
					$seo_tile.="{$detail2[1]}";
					break;
				}
			}
		}
		$TempSearch_2.="$key=>'{$$key}',";		//分页链接使用
		$TempSearch_array[$key]=$$key;			//其它链接使用
		$search_fieldDB[$key][$$key!=''?$$key:0]=" selected class='ck' ";
	}
}


?>