@echo off
setlocal EnableDelayedExpansion
setlocal EnableExtensions

reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set BITS=32BIT || set BITS=64BIT
set c=1
set path=
if !BITS! EQU 64 (
  set path=64bit\nircmd.exe
) else (
  set path=32bit\nircmd.exe
)
echo 1. Turn monitor off
echo 2. Notify when process terminates...
set /p c=Your choice:

if !c! EQU 1 (
	!path! monitor off
) else if !c! EQU 2 (
	!path! waitprocess ~$param.Process_Name$ speak text "~$param.Process_Name$ was closed"
)