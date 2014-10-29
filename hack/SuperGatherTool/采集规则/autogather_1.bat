
@echo off

start c:\progra~1\Intern~1\iexplore.exe "http://网站地址/后台管理文件夹/index.php?lfj=SuperGatherTool&gaction=gather_all_2&loginname=后台用户名&loginpwd=后台密码&autotast=1"

ping -n 7200 127.1 >nul 2>nul 

taskkill /f /im IEXPLORE.exe 

exit