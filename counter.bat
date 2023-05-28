@echo off
set count=0
:loop
set /a count=count+1
echo %count%
ping -n 1 -w 1000 127.0.0.1 > nul
goto loop
