@echo off
::设置程序或文件的完整路径（必选）
set Program=C:\小曾高效浏览器\browser\小曾高效浏览器.exe
 
::设置快捷方式名称（必选）
set LnkName=小曾高效浏览器
 
::设置程序的工作路径，一般为程序主目录，此项若留空，脚本将自行分析路径
set WorkDir=C:\小曾高效浏览器\browser\
 
::设置快捷方式显示的说明（可选）
set Desc=小曾高效浏览器
 
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
