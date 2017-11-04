Stop-Service "wlansvc"
Remove-Item "HKLM:\system\currentcontrolset\services\wlansvc\parameters\hostednetworksettings" -Force
Start-Service "wlansvc"
netsh wlan set hostednetwork mode=disallow | Out-Null