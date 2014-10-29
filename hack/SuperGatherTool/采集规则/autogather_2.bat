
@echo off
start c:\progra~1\Intern~1\iexplore.exe "http://网站地址/admin/index.php?lfj=SuperGatherTool&job=autogather&loginname=后台用户名&loginpwd=后台密码&autotast=1"
ping -n 5 127.1 >nul 2>nul 

taskkill /f /im IEXPLORE.exe 

exit