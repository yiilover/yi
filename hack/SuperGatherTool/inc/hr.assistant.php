<?php 
// �˲���Ƹģ�� - �ɼ�����
// ���ܣ��벩 �˲���Ƹģ�� �Ĳɼ�ͨ���˵����ʵ�ֲɼ��������ֹ���
// ���ߣ�����  QQ�� 570713592  ��ַ�� http://www.lanelead.com  ��̳�� http://bbs.lanelead.com
// �������ڣ� 2011-7-25

// �����ģ�������������
$Aarray = array();

$Aarray[Mname]=$Marray[$fixsystem][name];  //���ģ����

$_pre=$pre.$Marray[$fixsystem][pre];
$Aarray[Mtable]="1.�Զ�ע���Ա��:<font color='#0000FF'>{$pre}memberdata��{$pre}hy_company��{$pre}hy_company_fid </font> 2.��ְ��Ƹ��:<font color='#0000FF'>{$_pre}content ��{$_pre}content_N </font>(����N�����ģ�������ģ��id)";  //����漰�ı���

$Aarray[Mdesc]="
      (1)����˼·�����������������$AutoReg=1,���Զ�ע���Ա,$AutoReg=0,���Զ�ע���Ա.Ĭ��ֵ0-���Զ�ע��;�Զ�ע��ʱ,���Ȱ��ɼ��Ĺ�˾�� CompanyName ��ѯ ������ڸù�˾,��ע��,��ȡ�øù�˾�û���Ϣ,�����Զ�ע����ҵ��Ա.��Ա��Ĭ��Ϊ����ƴ������ĸ���,����3�ַ�������ĸ���+001,����15�ַ� ��ȡǰ15�ַ�.���δ�ɼ���˾����,�������ĸ�����Ϊ�û���,eamilΪ�û���@�������,Ĭ������123456 ; Ȼ���ٽ�����Ƹ��Ϣ������ <br />
      (2)����˵����a.��ȡ�˲ɼ�α�������IP��ģ��֩��ȴ�ʩ,ͻ��һ����ɼ���ʩ.  b.֧������ֶ�Ĭ��ֵ���úͲɼ��ֶθ߼�����,�����ļ�Ϊ: inc/$fixsystem.config.php c.֧�ַ�ҳ�ɼ�,֧���ظ����¹��� <br />
";  //��ģ�鹦������

$Aarray[Mfileds]="
<table width='100%' border='1' cellpadding='0' cellspacing='0' bordercolor='#99CCFF' >
  <tr>
    <td width='20%' bgcolor='#999900'>�ֶ�ͨ���</td>
    <td width='20%' bgcolor='#999900'>����</td>
    <td bgcolor='#999900'>˵��</td>
  </tr>
  <tr>
    <td colspan='3' bgcolor='#99CCFF'>�������������<font color='#FF0000'>\$AutoReg=1</font> ,���ȸ��ݲɼ��ֶ��Զ�ע����ҵ��Ա(��ҳ����).ͨ�������</td>
  </tr>
  <tr>
    <td><font color='#FF0000'>\$AutoReg</font></td>
    <td>�Ƿ��Զ�ע���Ա</td>
    <td>0 - ��, 1 - �� Ĭ��ֵ:1 - �����Զ�ע���Ա</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{CompanyName=*}</font></td>
    <td>��˾����</td>
    <td>�����ض��Ĳɼ��ֶ�</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{picurl=*}</font></td>
    <td><font color='blue'>��˾logo������ͼ</font></td>
    <td>�Զ�ע���Աʱ����Ϊ��˾logo,ͬʱΪ��������ͼ</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{qy_content=*}</font></td>
    <td>��ҵ���</td>
    <td>&nbsp;</td>
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
    <td colspan='3' bgcolor='#99CCFF'>����Ϊ�ɼ�����Ƹ���˲�ģ���ֶ�ͨ���</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{title=*}</font></td>
    <td>����</td>
    <td>���������ҳ���²ɼ����⣬�򸲸Ǳ����б�ҳ�ɼ��ı���</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content=*}</font></td>
    <td>����</td>
    <td>֧�ַ�10�βɼ���ϳ�,�� <font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content1=*}</font>��<font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content2=*}</font>��<font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content3=*}</font> ���� <font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content10=*}</font> ������ϲɼ����ݺϳ� <font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content=*}</font> ��������</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{keywords=*}</font></td>
    <td>�ؼ���</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{workplace=*}</font></td>
    <td>�����ص�</td>
    <td>��ϸ��������ģ���Զ����ֶβ�������</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{nums=*}</font></td>
    <td>��Ƹ����</td>
    <td>��ϸ��������ģ���Զ����ֶβ�������</td>
  </tr>
  <tr>
    <td><font color='#FF0000'>����ģ��</font></td>
    <td>����Զ����ֶ�</td>
    <td>�ο�����ģ���е��Զ����ֶ�</td>
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