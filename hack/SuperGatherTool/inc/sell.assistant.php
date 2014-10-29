<?php 
// b2b产品供应模块 - 采集助手
// 功能：齐博 b2b产品供应模块 的采集通配符说明，实现采集规则助手功能
// 作者：深蓝  QQ： 570713592  网址： http://www.lanelead.com  论坛： http://bbs.lanelead.com
// 更新日期： 2011-7-25

// 定义该模块规则助手数组
$Aarray = array();

$Aarray[Mname]=$Marray[$fixsystem][name];  //入库模块名

$_pre=$pre.$Marray[$fixsystem][pre];
$Aarray[Mtable]="<font color='#0000FF'>{$_pre}content 、{$_pre}content_N </font>(其中N代表该模块下入库模型id)";  //入库涉及的表名

$Aarray[Mdesc]="
      (1)程序思路：如果规则中设置了$AutoReg=1,则自动注册会员,$AutoReg=0,不自动注册会员.默认值0-不自动注册;自动注册时,首先按采集的公司名 CompanyName 查询 如果存在该公司,则不注册,并取得该公司用户信息,否则自动注册企业会员.会员名默认为汉语拼音首字母组合,不足3字符用首字母组合+001,大于15字符 截取前15字符.如果未采集公司名称,用随机字母组合作为用户名,eamil为用户名@你的域名,默认密码123456 ; 然后再进行招聘信息入库操作 <br />
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
    <td colspan='3' bgcolor='#99CCFF'>如果规则中设置<font color='#FF0000'>\$AutoReg=1</font> ,则先根据采集字段自动注册企业会员(黄页店铺).通配符如下</td>
  </tr>
  <tr>
    <td><font color='#FF0000'>\$AutoReg</font></td>
    <td>是否自动注册会员</td>
    <td>0 - 否, 1 - 是 默认值:1 - 启用自动注册会员</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{CompanyName=*}</font></td>
    <td>公司名称</td>
    <td>这是特定的采集字段</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{picurl=*}</font></td>
    <td><font color='blue'>公司logo、缩略图</font></td>
    <td>自动注册会员时可作为公司logo,同时为文章缩略图</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{qy_content=*}</font></td>
    <td>企业简介</td>
    <td>&nbsp;</td>
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
    <td colspan='3' bgcolor='#99CCFF'>以下为采集的产品求购模型字段通配符</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{title=*}</font></td>
    <td>标题</td>
    <td>如果在内容页重新采集标题，则覆盖标题列表页采集的标题</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content=*}</font></td>
    <td>正文</td>
    <td>支持分10段采集后合成,如 <font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content1=*}</font>、<font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content2=*}</font>、<font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content3=*}</font> …… <font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content10=*}</font> 最后以上采集内容合成 <font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{content=*}</font> 正文内容</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{keywords=*}</font></td>
    <td>关键词</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{price=*}</font></td>
    <td>产品价格</td>
    <td>默认值:0</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{my_units=*}</font></td>
    <td>计量单位</td>
    <td>默认值:'件',属自定义字段</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{order_min=*}</font></td>
    <td>最小起订</td>
    <td>默认值:50-1000随机 ,属自定义字段</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{order_max=*}</font></td>
    <td>最大供货</td>
    <td>默认值:500-10000随机 ,属自定义字段</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{shoptype=*}</font></td>
    <td>型号</td>
    <td>默认值:'见详细描述',属自定义字段</td>
  </tr>
  <tr>
    <td><font color='#FF0000' title='点击即可实现复制' onClick='javascript:CopyText(this);'>{send_day=*}</font></td>
    <td>发货期限</td>
    <td>默认值:'3-7天内发货',属自定义字段</td>
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