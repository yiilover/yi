<?php 
// news������Ѷģ�� - �ɼ������ļ�
// ���ܣ��벩 news������Ѷģ�� �Ĳɼ����ó��򣬿�������ɼ�������
// ���ߣ�����  QQ�� 570713592  ��ַ�� http://www.lanelead.com  ��̳�� http://bbs.lanelead.com
// �������ڣ� 2011-7-25

//����һЩ�ֶ�  �߼���������ڴ˴���һЩ��ʱ������Բɼ����������߼��������������Ч��������ԵĲɼ�
$title = str_replace("��", "�O", $title);
$content = str_replace("��", "�O", $content);

//�Բɼ��ĵ绰����������ֹ����������
if (strlen($telephone) >= 30) {
	$telephone = '';
} 

//�Զ���һЩ�ֶ�Ĭ��ֵ�� ���û�ж�����ֶβɼ�������Ĭ��ֵ���
$telephone = $telephone?$telephone:$userdb[telephone];

$hits = $hits ? $hits: rand(5, 200); //��������
$hits = intval($hits); 
$onlineip = $onlineip?$onlineip : rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255); //�������IP	

$author = $author?filtrate($author):$username; //�ɼ���������,���Ϊ����Ĭ��Ϊ�ɼ��û�
$copyfrom = $copyfrom?filtrate($copyfrom):"����"; //������Դ,���Ϊ����Ĭ����ԴΪ ���� 

$posttime = $begintime = get_time($posttime); //����ʱ��
$onedaytime = "86400";
$showday = $showday?$showday: 30; //Ĭ����Ч��Ϊ30��
$showday = intval($showday); 
$endtime = $showday * $onedaytime + $posttime; //����ʱ�� ��Ч��

$yz = $yz ? $yz : 1; //�Ƿ�ͨ����˷����� 1 - ��������  0 - ��Ҫ���

$restags = ""; //���������ֶ��в���Ҫ���˵�HTML���(������connent) ����:$restags="<img> <p>"; �м��ð�ǿո���

?>