 @echo off
cls
echo ����������������

echo ������������
netsh interface set interface WLAN disable 
echo ���������ѱ�����
echo ������������
netsh interface set interface WLAN enable
netsh wlan connect name=lantrack.SX_5G ssid=lantrack.SX_5G
echo ��������������