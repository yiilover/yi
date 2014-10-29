<?php
$IIIIIIIIIlll='preg_replace';
$filter_iframe = $save_rule[filter_iframe]?"'<iframe[^>]*?>.*?</iframe>'si": "''si";
$iframe = $save_rule[filter_iframe]?'':'<iframe>';
$filter_object = $save_rule[filter_object]?"'<object[^>]*?>.*?</object>'si":"''si";
$object = $save_rule[filter_object]?'':'<object>';
$filter_script = $save_rule[filter_script]?"'<script[^>]*?>.*?</script>'si":"''si";
$script = $save_rule[filter_script]?'':'<script>';
$filter_style = $save_rule[filter_style]?"'<style[^>]*?>.*?</style>'si": "''si";
$style = $save_rule[filter_style]?'':'<style>';
$filter_font = $save_rule[filter_font]?"'<font[^>]*?>.*?</font>'si":"''si";
$font = $save_rule[filter_font]?'':'<font>';
$filter_tablestyle = $save_rule[filter_tablestyle]?"' align=\"([^>\"]*)\"| cellpadding=\"([^>\"]*)\"| cellspacing=\"([^>\"]*)\"| border=\"([^>\"]*)\"| bordercolor=\"([^>\"]*)\"| background=\"([^>\"]*)\"| bgcolor=\"([^>\"]*)\"| style=\"([^>\"]*)\"| align=\'([^>\']*)\'| cellpadding=\'([^>\']*)\'| cellspacing=\'([^>\']*)\'| border=\'([^>\']*)\'| bordercolor=\'([^>\']*)\'| background=\'([^>\']*)\'| bgcolor=\'([^>\']*)\'| style=\'([^>\']*)\'| align=([^ >\'\"]+)| cellpadding=([^ >\'\"]+)| cellspacing=([^ >\'\"]+)| border=([^ >\'\"]+)| bordercolor=([^ >\'\"]+)| background=([^ >\'\"]+)| bgcolor=([^ >\'\"]+)| style=([^ >\'\"]+)'si":"''si";
$filter_displaynone = $save_rule[filter_displaynone]?"'<[^>]*? style=\"display:none\">.*?</[^>]*?>'si":"''si";
$strongb = $save_rule[filter_strong]?'':'<strong><b>';
$img = $save_rule[filter_img]?'':'<img>';
$div = $save_rule[filter_div]?'':'<div>';
$span = $save_rule[filter_span]?'':'<span>';
$table = $save_rule[filter_table]?'':'<table><th><thead><tr><td>';
$a = $save_rule[filter_a]?'':'<a>';
$show_content = str_ireplace("\r\n",'',$show_content);
$search = array ($filter_iframe,
$filter_object,
$filter_script,
$filter_style,
$filter_font,
$filter_tablestyle,
"'<select[^>]*?>.*?</select>'si",
"'<!--(.*?)-->'si",
"'<p[^<>]*?>'si",
"'</p>'si",
"'<br[^>]*>'si",
"'</br>'si",
"' onclick=\"([^>\"]*)\"| onchange=\"([^>\"]*)\"| onselect=\"([^>\"]*)\"| onfocus=\"([^>\"]*)\"| onblur=\"([^>\"]*)\"| onunload=\"([^>\"]*)\"| onload=\"([^>\"]*)\"| onland=\"([^>\"]*)\"| onerror=\"([^>\"]*)\"| onmouseover=\"([^>\"]*)\"| onmouseout=\"([^>\"]*)\"| onmousewheel=\"([^>\"]*)\"| id=\"([^>\"]*)\"| class=\"([^>\"]*)\"| name=\"([^>\"]*)\"'si",
"' onclick=\'([^>\']*)\'| onchange=\'([^>\']*)\'| onselect=\'([^>\']*)\'| onfocus=\'([^>\']*)\'| onblur=\'([^>\']*)\'| onunload=\'([^>\']*)\'| onload=\'([^>\']*)\'| onland=\'([^>\']*)\'| onerror=\'([^>\']*)\'| onmouseover=\'([^>\']*)\'| onmouseout=\'([^>\']*)\'| onmousewheel=\'([^>\']*)\'| id=\'([^>\']*)\'| class=\'([^>\']*)\'| name=\'([^>\']*)\''si",
"' onclick=([^ >\'\"]+)| onchange=([^ >\'\"]+)| onselect=([^ >\'\"]+)| onfocus=([^ >\'\"]+)| onblur=([^ >\'\"]+)| onunload=([^ >\'\"]+)| onload=([^ >\'\"]+)| onland=([^ >\'\"]+)| onerror=([^ >\'\"]+)| onmouseover=([^ >\'\"]+)| onmouseout=([^ >\'\"]+)| onmousewheel=([^ >\'\"]+)| id=([^ >\'\"]+)| class=([^ >\'\"]+)| name=([^ >\'\"]+)'si",
"'&#(\d+);'e");
$replace = array ('',
'',
'',
'',
'',
'',
'',
'',
'<p>',
'</p>',
'<br />',
'<br />',
'',
'',
'',
"chr(\\1)");
$show_content = $GLOBALS['IIIIIIIIIlll']($search,$replace,$show_content);
$show_content = strip_tags($show_content,"<p><br><embed>$img$table$strongb$a$span$div$font$style$script$object$iframe");
if ($save_rule[filter_format]) {
$search = array ('&nbsp; ',
'&nbsp;',
'<br /><p>',
'<p><br />',
'<p><p>',
'</p></p>',
'<br /><br /><br /><br />',
'<br /><br /><br />',
'<br /><br />',
'<p></p>',
'<p> </p>',
'<b></b>',
'<strong></strong>');
$replace = array ('',
'',
'<p>',
'<p>',
'<p>',
'</p>',
'<br />',
'<br />',
'<br />',
'',
'',
'',
'');
$show_content = str_ireplace($search,$replace,$show_content);
}

?>