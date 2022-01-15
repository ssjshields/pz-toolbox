@echo off
TITLE Project Zomboid - Fetch Logs
:start
echo Latest Logs:
echo.
dir /b C:\Users\%username%\Zomboid\Logs\*_Debuglog*.txt
echo.
echo ------------------------------------------------------------------------------
echo.
SET /p var=Continuing will open the Logs folder and filebin.net [Y/N]: 
IF /i "%var%"=="Y" GOTO cont
IF /i "%var%"=="N" GOTO EXIT
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

:cont
%SystemRoot%\explorer.exe "C:\Users\%username%\Zomboid\Logs"
start https://filebin.net/
msg "%username%" Upload your logs now.
EXIT

:no
echo.
echo No input detected.
echo ------------------------------------------------------------------------------
timeout 3
cls
GOTO start