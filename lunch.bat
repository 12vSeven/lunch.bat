@echo off
mode con: cols=80 lines=25
color 0E
title PT Spoofer

:SpoofSystemInfo
color 01
cls
echo Spoofing System Information... > nul
cd %~dp0 > nul
AMIDEWINx64.EXE /SU auto > nul
AMIDEWINx64.EXE /SS "Default string" > nul
AMIDEWINx64.EXE /SV "1.0" > nul
AMIDEWINx64.EXE /CSK "Default string" > nul
AMIDEWINx64.EXE /CM  "Default string" > nul
AMIDEWINx64.EXE /SP "MS-7D22" > nul
AMIDEWINx64.EXE /SM "Micro-Star International Co., Ltd." > nul
AMIDEWINx64.EXE /SK "Default string" > nul
AMIDEWINx64.EXE /SF "Default string" > nul
AMIDEWINx64.EXE /BM "Micro-Star International Co., Ltd." > nul
AMIDEWINx64.EXE /BP "H510M-A PRO (MS-7D22)" > nul
AMIDEWINx64.EXE /BV "1.0" > nul
AMIDEWINx64.EXE /BT "Default string" > nul
AMIDEWINx64.EXE /BLC "Default string" > nul
AMIDEWINx64.EXE /PSN "To Be Filled By O.E.M." > nul
AMIDEWINx64.EXE /PAT "To Be Filled By O.E.M." > nul
AMIDEWINx64.EXE /PPN "To Be Filled By O.E.M." > nul
AMIDEWINx64.EXE /CSK "Default string" > nul
AMIDEWINx64.EXE /CS "Default string" > nul
AMIDEWINx64.EXE /CV "1.0" > nul
AMIDEWINx64.EXE /CM "Micro-Star International Co., Ltd." > nul
AMIDEWINx64.EXE /CA "Default string" > nul
AMIDEWINx64.EXE /CO "0000 0000h" > nul
AMIDEWINx64.EXE /CT "03h" > nul
AMIDEWINx64.EXE /IV "3.80" > nul
AMIDEWINx64.EXE /IVN "American Megatrends International, LLC." > nul
AMIDEWINx64.EXE /BS "%random%%random%" > nul
cls
net stop winmgmt /y > nul
net start winmgmt /y > nul
sc stop winmgmt > nul
timeout 1 > nul
sc start winmgmt > nul
timeout 1 > nul
echo Successfully Spoofed. The program will exit now... > nul
timeout /t 3 /nobreak > nul
exit
