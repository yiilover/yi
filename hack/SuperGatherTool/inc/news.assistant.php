<?php 
// news文章资讯模块 - 采集助手
// 功能：齐博 news文章资讯模块 的采集通配符说明，实现采集规则助手功能
// 作者：深蓝  QQ： 570713592  网址： http://www.lanelead.com  论坛： http://bbs.lanelead.com
// 更新日期： 2011-7-25

// 定义该模块规则助手数组
$Aarray = array();

$Aarray[Mname]=$Marray[$fixsystem][name];  //入库模块名

$_pre=$pre.$Marray[$fixsystem][pre];
$Aarray[Mtable]="<font color='#0000FF'>{$_pre}content 、{$_pre}content_N </font>(其中N代表该模块下入库模型id)";  //入库涉及的表名

$Aarray[Mdesc]="
      (1)程序思路：根据用户采集规则采集到相应字段内容,执行入库操作.先录入主表，如果采集了自定义字段,再录入自定义模型表 <br />
      (2)功能说明：a.采取了采集伪代理、随机IP、模拟蜘蛛等措施,突破一般防采集措施.  b.支持入库字段默认值设置和采集字段高级处理,设置文件为: inc/$fixsystem.config.php c.支持分页采集,支持重复文章过滤 <br />
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
    <td>标题</td>
    <td>如果在内容页重新采集标题，则覆盖标题列表页采集的标题</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{picurl=*}</font></td>
    <td>缩略图</td>
    <td>默认为内容中第一张图片为缩略图</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content=*}</font></td>
    <td>正文</td>
    <td>支持分10段采集后合成,如 <font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content1=*}</font>、<font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content2=*}</font>、<font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content3=*}</font> …… <font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content10=*}</font> 最后以上采集内容合成 <font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content=*}</font> 正文内容</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{keywords=*}</font></td>
    <td>关键词</td>
    <td>默认值:关键词</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{author=*}</font></td>
    <td>作者</td>
    <td>默认值:采集规则中定义的发布用户 </td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{copyfrom=*}</font></td>
    <td>来源</td>
    <td>默认值:网络 </td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{copyfromurl=*}</font></td>
    <td>来源网址</td>
    <td>默认值:采集目标网址 </td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{linkman=*}</font></td>
    <td>联系人</td>
    <td>默认值:采集规则中定义的发布用户</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{telephone=*}</font></td>
    <td>联系电话</td>
    <td>默认值:采集规则中定义的发布用户联系电话</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{address=*}</font></td>
    <td>地址</td>
    <td>默认值:采集规则中定义的发布用户联系地址</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{email=*}</font></td>
    <td>eamil</td>
    <td>默认值:采集规则中定义的发布用户eamil</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{oicq=*}</font></td>
    <td>QQ</td>
    <td>默认值:采集规则中定义的发布用户QQ号</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{weburl=*}</font></td>
    <td>网址</td>
    <td>默认值:采集规则中定义的发布用户网址</td>
  </tr>
  <tr>
    <td><font color='#FF0000'>\$yz</font></td>
    <td>是否立即发布</td>
    <td>默认值:1 - 立即发布（该变量也可以在高级规则中自行定义 1 - 立即发布 0 - 需审核后发布）</td>
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