<?php 
// news������Ѷģ�� - �ɼ�����
// ���ܣ��벩 news������Ѷģ�� �Ĳɼ�ͨ���˵����ʵ�ֲɼ��������ֹ���
// ���ߣ�����  QQ�� 570713592  ��ַ�� http://www.lanelead.com  ��̳�� http://bbs.lanelead.com
// �������ڣ� 2011-7-25

// �����ģ�������������
$Aarray = array();

$Aarray[Mname]=$Marray[$fixsystem][name];  //���ģ����

$_pre=$pre.$Marray[$fixsystem][pre];
$Aarray[Mtable]="<font color='#0000FF'>{$_pre}content ��{$_pre}content_N </font>(����N�����ģ�������ģ��id)";  //����漰�ı���

$Aarray[Mdesc]="
      (1)����˼·�������û��ɼ�����ɼ�����Ӧ�ֶ�����,ִ��������.��¼����������ɼ����Զ����ֶ�,��¼���Զ���ģ�ͱ� <br />
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
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{title=*}</font></td>
    <td>����</td>
    <td>���������ҳ���²ɼ����⣬�򸲸Ǳ����б�ҳ�ɼ��ı���</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{picurl=*}</font></td>
    <td>����ͼ</td>
    <td>Ĭ��Ϊ�����е�һ��ͼƬΪ����ͼ</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content=*}</font></td>
    <td>����</td>
    <td>֧�ַ�10�βɼ���ϳ�,�� <font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content1=*}</font>��<font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content2=*}</font>��<font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content3=*}</font> ���� <font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content10=*}</font> ������ϲɼ����ݺϳ� <font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{content=*}</font> ��������</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{keywords=*}</font></td>
    <td>�ؼ���</td>
    <td>Ĭ��ֵ:�ؼ���</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{author=*}</font></td>
    <td>����</td>
    <td>Ĭ��ֵ:�ɼ������ж���ķ����û� </td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{copyfrom=*}</font></td>
    <td>��Դ</td>
    <td>Ĭ��ֵ:���� </td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{copyfromurl=*}</font></td>
    <td>��Դ��ַ</td>
    <td>Ĭ��ֵ:�ɼ�Ŀ����ַ </td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{linkman=*}</font></td>
    <td>��ϵ��</td>
    <td>Ĭ��ֵ:�ɼ������ж���ķ����û�</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{telephone=*}</font></td>
    <td>��ϵ�绰</td>
    <td>Ĭ��ֵ:�ɼ������ж���ķ����û���ϵ�绰</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{address=*}</font></td>
    <td>��ַ</td>
    <td>Ĭ��ֵ:�ɼ������ж���ķ����û���ϵ��ַ</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{email=*}</font></td>
    <td>eamil</td>
    <td>Ĭ��ֵ:�ɼ������ж���ķ����û�eamil</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{oicq=*}</font></td>
    <td>QQ</td>
    <td>Ĭ��ֵ:�ɼ������ж���ķ����û�QQ��</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='�������ʵ�ָ���' onClick='javascript:CopyText(this);'>{weburl=*}</font></td>
    <td>��ַ</td>
    <td>Ĭ��ֵ:�ɼ������ж���ķ����û���ַ</td>
  </tr>
  <tr>
    <td><font color='#FF0000'>\$yz</font></td>
    <td>�Ƿ���������</td>
    <td>Ĭ��ֵ:1 - �����������ñ���Ҳ�����ڸ߼����������ж��� 1 - �������� 0 - ����˺󷢲���</td>
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