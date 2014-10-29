<?php 
// 黄页店铺模块 - 采集助手
// 功能：齐博 黄页店铺模块 的采集通配符说明，实现采集规则助手功能
// 作者：深蓝  QQ： 570713592  网址： http://www.lanelead.com  论坛： http://bbs.lanelead.com
// 更新日期： 2011-7-25

// 定义该模块规则助手数组
$Aarray = array();

$Aarray[Mname]=$Marray[$fixsystem][name];  //入库模块名

$_pre=$pre.$Marray[$fixsystem][pre];
$Aarray[Mtable]="<font color='#0000FF'>{$_pre}content 、{$_pre}content_N </font>(其中N代表该模块下入库模型id)";  //入库涉及的表名

$Aarray[Mdesc]="
      (1)程序思路：本模块会自动注册会员.自动注册时,首先按采集的公司名 CompanyName 查询 如果存在该公司,则不注册,并取得该公司用户信息,否则自动注册企业会员.会员名默认为汉语拼音首字母组合,不足3字符用首字母组合+001,大于15字符 截取前15字符.如果未采集公司名称,用随机字母组合作为用户名,eamil为用户名@你的域名,默认密码123456 ;然后进行企业会员注册，利用采集到的企业简介、企业联系方式等执行入库操作 <br />
      (2)功能说明：a.采取了采集伪代理、随机IP、模拟蜘蛛等措施,突破一般防采集措施.  b.支持入库字段默认值设置和采集字段高级处理,设置文件为: inc/$fixsystem.config.php c.支持分页采集,支持重复文章过滤<br />
";  //该模块功能描述

$Aarray[Mfileds]="
<table width='100%' border='1' cellpadding='0' cellspacing='0' bordercolor='#99CCFF' >
  <tr>
    <td width='20%' bgcolor='#999900'>字段通配符</td>
    <td width='20%' bgcolor='#999900'>含义</td>
    <td bgcolor='#999900'>说明</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{title=*}</font></td>
    <td>公司名称</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{picurl=*}</font></td>
    <td><font color='blue'>公司logo</font></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content=*}</font></td>
    <td>企业简介</td>
    <td>支持分10段采集后合成,如 <font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content1=*}</font>、<font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content2=*}</font>、<font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content3=*}</font> …… <font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content10=*}</font> 最后以上采集内容合成 <font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content=*}</font> 正文内容</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_regmoney=*}</font></td>
    <td>企业注册资本</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_regplace=*}</font></td>
    <td>企业注册地址</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_address=*}</font></td>
    <td>地址</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_postnum=*}</font></td>
    <td>邮编</td>
    <td>&nbsp;</td>
  </tr>  
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_contact=*}</font></td>
    <td>联系人</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_contact_tel=*}</font></td>
    <td>联系电话</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_contact_mobile=*}</font></td>
    <td>联系手机号</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_contact_fax=*}</font></td>
    <td>传真</td>
    <td>&nbsp;</td>
  </tr>  
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_contact_email=*}</font></td>
    <td>联系email</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_website=*}</font></td>
    <td>企业网址</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_qq=*}</font></td>
    <td>联系QQ</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000'>\$cfidDB[]</font></td>
    <td>企业所属类别</td>
    <td>可以在规则中自定义企业分类,可以为多个.定义格式为 \$cfidDB[]=123; 123为你的分类id</td>
  </tr>
  <tr>
    <td colspan='3' bgcolor='#999933'>备注：更具体的字段通配符请查看入库表的字段定义和入库模型中自定义字段部分。该模块中采集的所有字段均可在 inc/$fixsystem.config.php 进行默认值定义和高级处理。</td>
  </tr>
</table>

"; //该模块通配符列表

$Aarray[update_date]="2011-7-25"; //该模块最近更新日期

$Aarray[update_url]='http://www.lanelead.com'; //该模块最近更新说明网址

$Aarray[other]='';  //其他备注信息


?>