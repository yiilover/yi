
@echo off
start c:\progra~1\Intern~1\iexplore.exe "http://��վ��ַ/admin/index.php?lfj=SuperGatherTool&job=autogather&loginname=��̨�û���&loginpwd=��̨����&autotast=1"
ping -n 5 127.1 >nul 2>nul 

taskkill /f /im IEXPLORE.exe 

exit