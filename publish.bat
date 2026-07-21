@echo off
if "%HUGO_ROOT%"=="" (echo HUGO_ROOT not set. Run setup.bat first. & exit /b)
if "%HUGO_LAST_POST%"=="" (echo No post found. Run new-post.bat first. & exit /b)

set PREV_DIR=%CD%
cd /d "%HUGO_ROOT%"

echo Publishing: %HUGO_LAST_POST%
set /p MSG="Commit message (leave blank to use post name): "
if "%MSG%"=="" set MSG=Add post: %HUGO_LAST_POST%

git add .
git commit -m "%MSG%"
git push origin main
echo Pushed! GitHub Action is now running.

cd /d "%PREV_DIR%"