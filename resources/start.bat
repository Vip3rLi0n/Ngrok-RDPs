@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2019 By Pari Malam" >> out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F >> out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat >> out.txt 2>&1
net user Pari_Malam sysadmin@null /add >nul
net localgroup administrators Pari_Malam /add >nul
net user Pari_Malam /active:yes >nul
net user installer /delete >nul 
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant Pari_Malam:F >nul
ICACLS C:\Windows\Installer /grant Pari_Malam:F >nul
echo Successful with No Problemo! Rebuild again if RDPs is DEAD
echo IP Address:
tasklist | find /i "ngrok.exe" > NUL && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo Failed to retrieve our NGROK authtoken! Go cry.
echo Username: Pari_Malam
echo Password: sysadmin@null
echo [w00t!] - Successful With No Problemo
echo RDPs By @Pari_Malam
ping -n 10 127.0.0.1 > nul