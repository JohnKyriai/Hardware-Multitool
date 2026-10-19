@echo off
cls 
title Hardware Multitool - v1.0


echo H A R D W A R E    M U L T I T O O L  -  V 1.0 
echo.
echo What would you like to check today?
echo. 

:menu
color 0A
echo (1) Check CPU information
echo (2) Check RAM information
echo (3) Check BIOS information
echo (4) Check Motherboard information
echo (5) Check Drive information
echo (6) Check GPU information
echo (7) Exit 
echo.

choice /c 1234567 /m "Select a number:"

if errorlevel 7 goto option7
if errorlevel 6 goto option6
if errorlevel 5 goto option5
if errorlevel 4 goto option4
if errorlevel 3 goto option3
if errorlevel 2 goto option2
if errorlevel 1 goto option1

:option1
cls
echo CPU INFO:
wmic cpu get caption, name, deviceid, numberofcores, maxclockspeed, status
pause
goto menu

:option2 
cls
echo RAM INFO:
wmic memorychip get capacity, devicelocator, partnumber
pause
goto menu

:option3
cls
echo BIOS INFO
wmic bios get serialnumber, manufacturer, version, releasedate
pause
goto menu
 
:option4
cls
echo MOTHERBOARD INFO:
wmic baseboard get manufacturer, product, serialnumber, version
pause
goto menu

:option5
cls 
echo DRIVE INFO:
wmic diskdrive get caption, model, size, status
pause
goto menu

:option6
cls 
echo GPU INFO:
wmic path Win32_VideoController get description, pnpdeviceid, driverversion
pause
goto menu

:option7
cls 
echo bye bye
exit

pause



