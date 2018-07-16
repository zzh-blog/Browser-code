@echo off
:ok
echo.-----------------------------
echo.choco -help        //查看choco使用说明
echo.choco search      //搜索想要安装的包，用 -all 参数会显示所有可用的版本
echo.choco install     //安装包，用 -version 参数可以安装指定版本的包
echo.choco uninstall   //删除包
echo.choco update      //更新安装的包
echo.-----------------------------
set /p a=$
%a%
goto ok