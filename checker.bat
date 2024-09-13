ECHO OFF
TITLE GG/CAPWARE * HWID CHECKER
ECHO **********************************
Color 0F
ECHO **********************************
:start
cls
wmic diskdrive get model, serialnumber
ECHO CPU
wmic cpu get serialnumber
ECHO ***
ECHO BIOS
wmic bios get serialnumber
ECHO ****
ECHO Motherboard
wmic baseboard get serialnumber
ECHO ***********
ECHO smBIOS UUID
wmic path win32_computersystemproduct get uuid
ECHO ***********
getmac
ECHO **********************************
echo Press any key to get your hardware serials again.
pause>nul
goto start