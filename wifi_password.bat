@echo off 
set /p SSID="SSID: "
netsh wlan show profile %SSID% key=clear
