<?php
$sort_table=$Marray[$fixsystem][sort_table];
$sort_table = $sort_table?$sort_table:'sort';
if ($fixsystem == "phpwind") {
	$showfid = "��ѡ�����ĸ���Ŀ:" . phpwind_fid("$sort_table", "postdb[fid]", $fid = $fid);
} elseif ($fixsystem == "discuz") {
	$showfid = "��ѡ�����ĸ���Ŀ:" . phpwind_fid("$sort_table", "postdb[fid]", $fid = $fid);
} else {
	$showfid = "��ѡ�����ĸ���Ŀ:" . $Guidedb -> select("{$pre}$sort_table", "postdb[fid]", $fid = $fid);
} 

echo "<SCRIPT LANGUAGE=\"JavaScript\">
	<!--
	window.parent.showdiv(\"$showfid\")
	//-->
	</SCRIPT>";
exit;

function phpwind_fid($table,$name='fid',$ck='',$fup='') {
	global $db;
	if($fup){
		$SQL=" WHERE fup='$fup' ";
	}
	$query = $db -> query("SELECT * FROM $table $SQL ORDER BY vieworder DESC");
	while($rs = $db->fetch_array($query)){
		$ckk=$ck==$rs[fid]?" selected ":" ";
		$show.="<option value='$rs[fid]' $ckk>$rs[name]</option>";
	}
	return "<select id='$table' name=$name><option value=''>��ѡ��</option>$show</select>";
} 
?>