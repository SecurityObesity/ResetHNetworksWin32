@echo off
net stop wlansvc
reg delete "HKEY_LOCAL_MACHINE\system\currentcontrolset\services\wlansvc\parameters\hostednetworksettings" /f
net start wlansvc
netsh wlan set hostednetwork mode=disallow