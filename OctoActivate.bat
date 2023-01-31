@@echo off
chcp 65001
cls
mode 70,10
title OctoActivate
color 3

echo    █████╗ ██████████████╗██████╗ 
echo  ██╔═══████╔════╚══██╔══██╔═══██╗
echo  ██║   ████║       ██║  ██║   ██║
echo  ██║   ████║       ██║  ██║   ██║
echo  ╚██████╔╚██████╗  ██║  ╚██████╔╝ 
echo   ╚═════╝ ╚═════╝  ╚═╝   ╚═════╝                                                                                                                                                                         
powershell write-host -fore Red Must Run In Admin! 

pause
cls
color 3
pause
cls 
powershell write-host -fore Yellow Cleaning...
start /MIN cmd /k "slmgr.vbs /upk"
TIMEOUT /T 4 >nul
start /MIN cmd /k "slmgr /ipk  W269N-WFGWX-YVC9B-4J6C9-T83GX"
powershell write-host -fore Yellow Adding Product Key...
TIMEOUT /T 4 >nul
start /MIN cmd /k "slmgr /skms kms8.msguides.com"
powershell write-host -fore Yellow Connecting to KMS Server...
TIMEOUT /T 4 >nul
start /MIN cmd /k "slmgr /ato"
TIMEOUT /T 5 >nul
pause
cls
powershell write-host -fore Green Complete! If you ran into any errors, please submit a issue 
pause
exit



