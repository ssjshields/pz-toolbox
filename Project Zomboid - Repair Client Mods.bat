::script by nurver#7626
:start
@echo off
TITLE: Project Zomboid - Fix Mods - Client
MODE 140,25
type C:\Users\%username%\Zomboid\Logs\*.txt | find /i "Fail ID=" >> ".\logs\pz_mod_results_log.txt"
cls
IF errorlevel 1 (echo There doesn't appear to be any failing mods. && GOTO removeanyways) ELSE (GOTO failinfo)

:removeanyways
echo.
echo [%date% %time% ERROR] No failing mods found. >> ".\logs\pz_mod_removal_log.txt"
SET /p var3=Continue anyways? [Y/N]: 
echo.
::IF /I "%var3%" NEQ "Y" (GOTO END) ELSE (cls && GOTO boot)
echo.
IF /i "%var3%"=="Y" cls && GOTO boot
IF /i "%var3%"=="N" EXIT
IF "%var3%"=="           " cls && GOTO boot
IF "%var3%"=="          " cls && GOTO boot
IF "%var3%"=="         " cls && GOTO boot
IF "%var3%"=="        " cls && GOTO boot
IF "%var3%"=="       " cls && GOTO boot
IF "%var3%"=="      " cls && GOTO boot
IF "%var3%"=="     " cls && GOTO boot
IF "%var3%"=="    " cls && GOTO boot
IF "%var3%"=="   " cls && GOTO boot
IF "%var3%"=="  " cls && GOTO boot
IF "%var3%"==" " cls && GOTO boot
IF "%var3%"=="" cls && GOTO boot

:boot
tasklist /fi "imagename eq ProjectZomboid64.exe" | find /i "ProjectZomboid64.exe" >nul
IF errorlevel 1 (SET /p var=Enter the failing mod ID now: ) ELSE (GOTO pzfound)
IF "%var%"=="           " GOTO no
IF "%var%"=="          " GOTO no
IF "%var%"=="         " GOTO no
IF "%var%"=="        " GOTO no
IF "%var%"=="       " GOTO no
IF "%var%"=="      " GOTO no
IF "%var%"=="     " GOTO no
IF "%var%"=="    " GOTO no
IF "%var%"=="   " GOTO no
IF "%var%"=="  " GOTO no
IF "%var%"==" " GOTO no
IF "%var%"=="" GOTO no 

:yes
cls
SET /p var2=Confirm the removal of Workshop addon: "\steamapps\workshop\content\108600\%var%" [Y/N]: 
IF /i "%var2%"=="Y" GOTO confirmdelete
IF /i "%var2%"=="N" GOTO deleteabort

:no
echo.
echo No input detected.
echo ------------------------------------------------------------------------------
timeout 3
cls
GOTO start

:modnotfound
echo [%date% %time% ERROR] "%var%" not found. >> ".\logs\pz_mod_removal_log.txt"
cls
echo %var% not found. Check ID again.
echo.
PAUSE
cls
GOTO :start

:deleteabort
cls
echo %var% removal aborted.
echo.
PAUSE
cls
GOTO :start

:pzfound
echo "ProjectZomboid64.exe" found.
echo.
echo Please close your game before running this utility.
echo ------------------------------------------------------------------------------
echo.
PAUSE
cls
GOTO start

:confirmdelete
if not exist ".\steamapps\workshop\content\108600\%var%" GOTO modnotfound 
rd /q /s ".\steamapps\workshop\content\108600\%var%"
echo [%date% %time% LOG] "%var%" removed. >> ".\logs\pz_mod_removal_log.txt"
cls
echo.
msg "%username%" %var% removed. Un-subscribe and re-subscribe to %var% now.
MOVE C:\Users\%username%\Zomboid\Logs\*.txt C:\Users\%username%\Zomboid\Logs\logs_%date:~7,2%"-"%date:~-10,2%
cls
start https://steamcommunity.com/sharedfiles/filedetails/?id=%var%
GOTO finale

:finale
msg "%username%" Ensure your Steam client has enough time to download the Workshop addon before launching the game. If a mismatch still occurs, the server you are joining needs to be restarted.
GOTO finaleact2

:finaleact2
msg "%username%" Remember to support your favorite content creators.
EXIT

:failinfo
echo Failing mod ID error(s): 
echo.
type ".\logs\pz_mod_results_log.txt"
echo ----------------------------------------------------------------------------------------------------------------------------------------
echo.
goto boot