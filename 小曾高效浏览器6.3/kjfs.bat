@echo off
::���ó�����ļ�������·������ѡ��
set Program=C:\С����Ч�����\browser\С����Ч�����.exe
 
::���ÿ�ݷ�ʽ���ƣ���ѡ��
set LnkName=С����Ч�����
 
::���ó���Ĺ���·����һ��Ϊ������Ŀ¼�����������գ��ű������з���·��
set WorkDir=C:\С����Ч�����\browser\
 
::���ÿ�ݷ�ʽ��ʾ��˵������ѡ��
set Desc=С����Ч�����
 
if not defined WorkDir call:GetWorkDir "%Program%"
(echo Set WshShell=CreateObject("WScript.Shell"^)
echo strDesKtop=WshShell.SpecialFolders("DesKtop"^)
echo Set oShellLink=WshShell.CreateShortcut(strDesKtop^&"\%LnkName%.lnk"^)
echo oShellLink.TargetPath="%Program%"
echo oShellLink.WorkingDirectory="%WorkDir%"
echo oShellLink.WindowStyle=1
echo oShellLink.Description="%Desc%"
echo oShellLink.Save)>makelnk.vbe
makelnk.vbe

del /f /q makelnk.vbe

goto :eof
:GetWorkDir
set WorkDir=%~dp1
set WorkDir=%WorkDir:~,-1%
goto :eof
