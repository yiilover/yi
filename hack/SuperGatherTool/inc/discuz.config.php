<?php 
// discuz��̳ - �ɼ������ļ�
// ���ܣ��벩 discuz��̳ �Ĳɼ����ó��򣬿�������ɼ�������
// ���ߣ�����  QQ�� 570713592  ��ַ�� http://www.lanelead.com  ��̳�� http://bbs.lanelead.com
// �������ڣ� 2011-7-25

$hits = rand(5, 200); //��������
$onlineip = rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255); //�������IP	

$author = $author?filtrate($author):$username; //�ɼ���������,���Ϊ����Ĭ��Ϊ�ɼ��û�
$copyfrom = $copyfrom?filtrate($copyfrom):"����"; //������Դ,���Ϊ����Ĭ����ԴΪ ���� 
$hits = intval($hits); 
// ��ȡʱ��
$posttime = get_time($posttime);

$yz = 1;

$restags = ""; //���������ֶ��в���Ҫ���˵�HTML���(������connent) ����:$restags="<img> <p>"; �м��ð�ǿո���


?>