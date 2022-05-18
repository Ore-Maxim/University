@ECHO Off
set Version=2.0.98
color FC
mode con:cols=143 lines=15
title ’Ёе®Ґ г¤ «Ґ­ЁҐ "Wallpaper Engine %Version%" / Silent Uninstalling "Wallpaper Engine %Version%"
set WE32=wallpaper32.exe
set WE64=wallpaper64.exe
tasklist /fi "imagename eq %WE32%*" | find ":" > nul
tasklist /fi "imagename eq %WE64%*" | find ":" > nul
if errorlevel 1 echo Wallpaper Engine %Version% is running! / Wallpaper Engine %Version% § ЇгйҐ­! & ping -n 4 127.0.0.1 > NUL & exit
@cls
echo.
echo.
echo.
@echo     ЫЫЫЫЫЫЫЫЫ ЫЫЫЫЫЫЫЫ ЫЫЫЫЫЫЫЫЫ   ЫЫЫЫ    ЫЫЫЫЫЫЫ ЫЫЫ  ЫЫЫ    ЫЫЫЫЫЫЫЫЫ ЫЫ    ЫЫ    ЫЫ    ЫЫ ЫЫЫЫЫЫЫЫ ЫЫЫЫЫЫЫЫ ЫЫЫЫЫЫЫЫЫ ЫЫЫЫЫЫЫЫ ЫЫ    ЫЫ   
@echo     ЫЫЫ   ЫЫЫ ЫЫЫ      ЫЫЫ   ЫЫЫ  ЫЫЫЫЫЫ   ЫЫ      ЫЫЫ ЫЫЫ     ЫЫЫ   ЫЫЫ  ЫЫ  ЫЫ      ЫЫ  ЫЫ  ЫЫЫ         ЫЫ    ЫЫЫ   ЫЫЫ    ЫЫ    ЫЫЫЫ  ЫЫ
@echo     ЫЫЫЫЫЫЫЫЫ ЫЫЫЫЫЫЫ  ЫЫЫЫЫЫЫЫЫ  ЫЫ  ЫЫ   ЫЫ      ЫЫЫЫЫ       ЫЫЫЫЫЫЫЫЫ   ЫЫЫЫ        ЫЫЫЫ   ЫЫЫЫЫЫЫ     ЫЫ    ЫЫЫЫЫЫЫЫЫ    ЫЫ    ЫЫ ЫЫ ЫЫ
@echo     ЫЫЫ ЫЫЫ   ЫЫЫ      ЫЫЫ       ЫЫЫЫЫЫЫЫ  ЫЫ      ЫЫЫ ЫЫЫ     ЫЫЫ   ЫЫЫ    ЫЫ        ЫЫ  ЫЫ  ЫЫЫ         ЫЫ    ЫЫЫ ЫЫЫ      ЫЫ    ЫЫ  ЫЫЫЫ
@echo     ЫЫЫ   ЫЫЫ ЫЫЫЫЫЫЫЫ ЫЫЫ      ЫЫЫ    ЫЫЫ ЫЫЫЫЫЫЫ ЫЫЫ  ЫЫЫ    ЫЫЫЫЫЫЫЫЫ   ЫЫ        ЫЫ    ЫЫ ЫЫЫЫЫЫЫЫ    ЫЫ    ЫЫЫ   ЫЫЫ ЫЫЫЫЫЫЫЫ ЫЫ    ЫЫ
@echo.  
@echo                                            “„Ђ‹…Ќ€… ‚ ’€•ЋЊ ђ…†€Њ…... / UNINSTALLING IN SILENT MODE...
@echo off
Set ProcessName32=wallpaper32.exe
Set ProcessName64=wallpaper64.exe
tasklist /fi "imagename eq %ProcessName32%" | find ":" > nul
if errorlevel 1 taskkill /f /im "%ProcessName32%"
tasklist /fi "imagename eq %ProcessName64%" | find ":" > nul
if errorlevel 1 taskkill /f /im "%ProcessName64%"
set program=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Wallpaper Engine_is1
For /F "skip=2 tokens=2*" %%a In ('Reg Query "%program%" /v UninstallStringVerySilent 2^> nul') Do start "" /wait %%b /VERYSILENT