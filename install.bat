@echo off

set ST2_DIR=C:\Users\%USERNAME%\AppData\Roaming\Sublime Text 2\

set name=Installed Packages
call :SUB_LINK

set name=Packages
call :SUB_LINK

set name=Pristine Packages
call :SUB_LINK

pause
exit

:SUB_LINK
if exist "%ST2_DIR%%name%" (rmdir "%ST2_DIR%%name%")
mklink /D "%ST2_DIR%%name%" "%~dp0%name%"
exit /b