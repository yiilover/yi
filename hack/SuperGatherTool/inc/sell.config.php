<?php
// b2b��Ʒ��Ӧģ�� - �ɼ������ļ�
// ���ܣ��벩 b2b��Ʒ��Ӧģ�� �Ĳɼ����ó��򣬿�������ɼ�������
// ���ߣ�����  QQ�� 570713592  ��ַ�� http://www.lanelead.com  ��̳�� http://bbs.lanelead.com
// �������ڣ� 2011-7-25

//����һЩ�ֶ�  �߼���������ڴ˴���һЩ��ʱ������Բɼ����������߼��������������Ч��������ԵĲɼ�
$title = str_replace("��", "�O", $title);
$content = str_replace("��", "�O", $content);
$price = str_replace("��", "", $price);

//�Բɼ��ĵ绰����������ֹ����������
if (strlen($telephone) >= 30) {
	$telephone = '';
} 

//�Զ���һЩ�ֶ�Ĭ��ֵ�� ���û�ж�����ֶβɼ�������Ĭ��ֵ���
$price = $price ? $price : 0; //�۸�
$gather_module_valeDB[my_units] = $my_units?$my_units:"��"; //������λ
$gather_module_valeDB[order_min] = $order_min?$order_min:rand(50, 1000); //��С��
$gather_module_valeDB[order_max] = $order_max?$order_max:rand(500, 10000); //��󹩻�
$gather_module_valeDB[shoptype] = $shoptype?$shoptype:"����ϸ����"; //�ͺ�
$gather_module_valeDB[send_day] = $send_day?$send_day:"3-7���ڷ���"; //��������

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

$end_day = date("Y-m-d", $endtime); //����ʱ��

$picnum = count($Filedb); //����ͼƬ����

$yz = $yz ? $yz : 1; //�Ƿ�ͨ����˷����� 1 - ��������  0 - ��Ҫ���

$restags = ""; //���������ֶ��в���Ҫ���˵�HTML���(������connent) ����:$restags="<img> <p>"; �м��ð�ǿո���

?>