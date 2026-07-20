@echo off
:: Get the directory where setup.bat lives (Hugo root)
set HUGO_ROOT=%~dp0
:: Remove trailing backslash
set HUGO_ROOT=%HUGO_ROOT:~0,-1%

setx HUGO_ROOT "%HUGO_ROOT%"
echo Hugo root set to: %HUGO_ROOT%
echo Done! Open a new terminal for changes to take effect.