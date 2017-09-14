@echo off
ECHO Testes iniciados %DATE% - %TIME%
Set _S=0
:Inicio
if %_S% EQU 32( goto end )
ECHO %_S%
DEL /f ATr.txt
DEL /f STr.txt
DEL /f NTr.txt
DEL /f Entr.txt
perl GSim.pl
perl STr.pl
perl NTr.pl
perl ATr.pl
An.exe
SET /A _S+=1
goto Inicio
:end
