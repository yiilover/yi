<?php 

$IS_BIZLaneLead=0; //�汾���� 0 - ��Ѱ� 1 - ��ҵ�� 
$AuthorizeURL="lanelead.com"; //��Ȩ���� �������Զ�ע���Աʱ�������õ�

// ����ӿڱ���
$WEB_PATH = ROOT_PATH; //��վ��Ŀ¼
$cachepage = intval($cachepage);  //����̲ɼ�
$refreshtime=1; //�ɼ����

// ����֧�ֲɼ���ģ��
$Marray = array();

//news��ѶƵ�� - �ط��Ż���b2bϵͳͨ��
$Marray[news][name] = "��ѶƵ��(news)";
$Marray[news][sort_table] = "news_sort";
$Marray[news][pre] = "news_";

//�˲���Ƹ -  �ط��Ż���b2bϵͳͨ��
$Marray[hr][name] = "�˲���Ƹ(hr)";
$Marray[hr][sort_table] = "hr_sort";
$Marray[hr][pre] = "hr_";

//��ҳ����  -  �ط��Ż���b2bϵͳͨ��
$Marray[hy][name] = "��ҳ����(hy)";
$Marray[hy][sort_table] = "hy_sort";
$Marray[hy][pre] = "hy_";

//����ϵͳ - �ط��Ż�����������ϵͳ
$Marray[fenlei][name] = "����ϵͳ(fenlei)";
$Marray[fenlei][sort_table] = "fenlei_sort";
$Marray[fenlei][pre] = "fenlei_";

//����Ƶ�� - �ط��Ż�����վϵͳ
$Marray[house][name] = "����Ƶ��(house)";
$Marray[house][sort_table] = "house_sort";
$Marray[house][pre] = "house_";

//�Ź�� - �ط��Ż�
$Marray[tuangou][name] = "�Ź��(tuangou)";
$Marray[tuangou][sort_table] = "tuangou_sort";
$Marray[tuangou][pre] = "tuangou_";

//�̳�ϵͳ - �ط��Ż�����վϵͳ
$Marray[shop][name] = "�̳�ϵͳ(shop)";
$Marray[shop][sort_table] = "shop_sort";
$Marray[shop][pre] = "shop_";


/*
//չ��չ���� -  b2bϵͳר��
$Marray[showroom][name] = "չ��չ����(showroom)";
$Marray[showroom][sort_table] = "showroom_sort";
$Marray[showroom][pre] = "showroom_";

//֪��ģ��
$Marray[zhidao][name] = "֪��ģ��(zhidao)";
$Marray[zhidao][sort_table] = "zhidao_sort";
$Marray[zhidao][pre] = "zhidao_";

*/

//DZ��̳ϵͳ - ͨ��
$Marray[discuz][name] = "DZ��̳ϵͳ(discuz)";
$Marray[discuz][sort_table] = "forums";

//phpwind��̳ϵͳ - ͨ��
$Marray[phpwind][name] = "PW��̳ϵͳ(phpwind)";
$Marray[phpwind][sort_table] = "{$TB_pre}forums";

?>