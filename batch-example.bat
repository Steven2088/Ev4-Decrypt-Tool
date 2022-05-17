@echo off
setlocal EnableDelayedExpansion
for /f %%i in ('"dir /a/s/b/on *.ev4"') do (
	cd C:\Users\DreamCatcher\Desktop\ev4-decrypt-tool
	start decrypt.exe %%i
	timeout /nobreak /t 3
)