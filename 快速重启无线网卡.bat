 @echo off
cls
echo 快速重启无线网卡

echo 禁用无线网卡
netsh interface set interface WLAN disable 
echo 无线网卡已被禁用
echo 启用无线网卡
netsh interface set interface WLAN enable
netsh wlan connect name=lantrack.SX_5G ssid=lantrack.SX_5G
echo 无线网卡已启用