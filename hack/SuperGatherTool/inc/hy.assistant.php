<?php 
// ��ҳ����ģ�� - �ɼ�����
// ���ܣ��벩 ��ҳ����ģ�� �Ĳɼ�ͨ���˵����ʵ�ֲɼ��������ֹ���
// ���ߣ�����  QQ�� 570713592  ��ַ�� http://www.lanelead.com  ��̳�� http://bbs.lanelead.com
// �������ڣ� 2011-7-25

// �����ģ�������������
$Aarray = array();

$Aarray[Mname]=$Marray[$fixsystem][name];  //���ģ����

$_pre=$pre.$Marray[$fixsystem][pre];
$Aarray[Mtable]="<font color='#0000FF'>{$_pre}content ��{$_pre}content_N </font>(����N�����ģ�������ģ��id)";  //����漰�ı���

$Aarray[Mdesc]="
      (1)����˼·����ģ����Զ�ע���Ա.�Զ�ע��ʱ,���Ȱ��ɼ��Ĺ�˾�� CompanyName ��ѯ ������ڸù�˾,��ע��,��ȡ�øù�˾�û���Ϣ,�����Զ�ע����ҵ��Ա.��Ա��Ĭ��Ϊ����ƴ������ĸ���,����3�ַ�������ĸ���+001,����15�ַ� ��ȡǰ15�ַ�.���δ�ɼ���˾����,�������ĸ�����Ϊ�û���,eamilΪ�û���@�������,Ĭ������123456 ;Ȼ�������ҵ��Աע�ᣬ���òɼ�������ҵ��顢��ҵ��ϵ��ʽ��ִ�������� <br />
      (2)����˵����a.��ȡ�˲ɼ�α�������IP��ģ��֩��ȴ�ʩ,ͻ��һ����ɼ���ʩ.  b.֧������ֶ�Ĭ��ֵ���úͲɼ��ֶθ߼�����,�����ļ�Ϊ: inc/$fixsystem.config.php c.֧�ַ�ҳ�ɼ�,֧���ظ����¹���<br />
";  //��ģ�鹦������

$Aarray[Mfileds]="
<table width='100%' border='1' cellpadding='0' cellspacing='0' bordercolor='#99CCFF' >
  <tr>
    <td width='20%' bgcolor='#999900'>�ֶ�ͨ���</td>
    <td width='20%' bgcolor='#999900'>����</td>
    <td bgcolor='#999900'>˵��</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{title=*}</font></td>
    <td>��˾����</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{picurl=*}</font></td>
    <td><font color='blue'>��˾logo</font></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content=*}</font></td>
    <td>��ҵ���</td>
    <td>֧�ַ�10�βɼ���ϳ�,�� <font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content1=*}</font>��<font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content2=*}</font>��<font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content3=*}</font> ���� <font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content10=*}</font> ������ϲɼ����ݺϳ� <font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content=*}</font> ��������</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_regmoney=*}</font></td>
    <td>��ҵע���ʱ�</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_regplace=*}</font></td>
    <td>��ҵע���ַ</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_address=*}</font></td>
    <td>��ַ</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_postnum=*}</font></td>
    <td>�ʱ�</td>
    <td>&nbsp;</td>
  </tr>  
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_contact=*}</font></td>
    <td>��ϵ��</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_contact_tel=*}</font></td>
    <td>��ϵ�绰</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_contact_mobile=*}</font></td>
    <td>��ϵ�ֻ���</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_contact_fax=*}</font></td>
    <td>����</td>
    <td>&nbsp;</td>
  </tr>  
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_contact_email=*}</font></td>
    <td>��ϵemail</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_website=*}</font></td>
    <td>��ҵ��ַ</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_qq=*}</font></td>
    <td>��ϵQQ</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000'>\$cfidDB[]</font></td>
    <td>��ҵ�������</td>
    <td>�����ڹ������Զ�����ҵ����,����Ϊ���.�����ʽΪ \$cfidDB[]=123; 123Ϊ��ķ���id</td>
  </tr>
  <tr>
    <td colspan='3' bgcolor='#999933'>��ע����������ֶ�ͨ�����鿴������ֶζ�������ģ�����Զ����ֶβ��֡���ģ���вɼ��������ֶξ����� inc/$fixsystem.config.php ����Ĭ��ֵ����͸߼�����</td>
  </tr>
</table>

"; //��ģ��ͨ����б�

$Aarray[update_date]="2011-7-25"; //��ģ�������������

$Aarray[update_url]='http://www.lanelead.com'; //��ģ���������˵����ַ

$Aarray[other]='';  //������ע��Ϣ


?>