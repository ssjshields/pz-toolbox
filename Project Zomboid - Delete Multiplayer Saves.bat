@echo off
TITLE Project Zomboid - Delete Multiplayer Saves
:Q
cls
echo Remove all of %username%'s Multiplayer Saves? 
echo.
echo This action is permanent and cannot be undone.
echo.
set /P c=[Y/N]: 
if /I "%c%" EQU "Y" goto :YES
if /I "%c%" EQU "N" goto :NO
goto :choice

:YES

rd /q /s C:\Users\%username%\Zomboid\Saves\Multiplayer
msg "%username%" Project Zomboid Multiplayer Saves deleted.
exit

:NO
exit

