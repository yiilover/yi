
@echo off

start c:\progra~1\Intern~1\iexplore.exe "http://��վ��ַ/��̨�����ļ���/index.php?lfj=SuperGatherTool&gaction=gather_all_2&loginname=��̨�û���&loginpwd=��̨����&autotast=1"

ping -n 7200 127.1 >nul 2>nul 

taskkill /f /im IEXPLORE.exe 

exit