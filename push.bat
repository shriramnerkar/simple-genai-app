# push.bat
@echo off
echo Adding changes...
git add .
echo Enter commit message:
set /p msg=
git commit -m "%msg%"
git push origin main
pause