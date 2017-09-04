 @echo off
cls
echo 一键修改IP地址
set NAME="以太网"



echo.
echo 自动获取IP按1
echo.
echo 改为静态按2

set /pKEY=[选的是:]
if %KEY% ==1 goto ONE
if %KEY% ==2 goto TWO


:ONE
echo 自动获取
netsh interface ip set address %NAME% source=dhcp
netsh interface ip set dnsservers %NAME% source=dhcp
echo 已设置为自动获取
ipconfig /all
pause
exit
:TWO
echo 静态IP
netsh interface ip set address %NAME% static 192.168.10.134 255.255.255.0 192.168.10.10
netsh interface ip set dnsservers %NAME% static 202.106.0.20 primary validate=no






echo 设置完成
ipconfig /all
pause

