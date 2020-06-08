@echo off
@title Speedtest

if "%1"=="1" goto upload
if "%1"=="2" goto download
if "%1"=="3" goto latencia

if exist "C:\Zabbix\scripts\speedtest.conf" goto start

echo Informe o nome da Unidade (Exemplo: CENTRO1)
set /p UNIDADE=Unidade: 
echo Informe abaixo velocidade minima em Mbps para alarme de velocidade de download
echo (Exemplo: Se indicado o valor 10, o alarme será disparado quando a velocidade de download cair para 10 Mbps)
set /p ALARM_DOWN=Alarme para download: 
@echo.
echo Informe a velocidade minima em Mbps para alarme de velocidade de upload
echo (Exemplo: Se indicado o valor 10, o alarme será disparado quando a velocidade de upload cair para 10 Mbps)
set /p ALARM_UP=Alarme para upload: 

echo {"data":[{"{#1}":"1","{#2}":"2","{#3}":"3","{#UNIDADE}":"%UNIDADE%","{#ALARM_UP}":"%ALARM_UP%","{#ALARM_DOWN}":"%ALARM_DOWN%"}]} > C:\Zabbix\scripts\speedtest.conf

goto start
::

:start

cd C:\Zabbix\scripts
speedtest-cli.exe -r -t 600 > speedtest.tmp
move speedtest.tmp speedtest.txt
exit
::

:upload
C:\Zabbix\scripts\gawk.exe --field-separator="|" "{printf $6}" C:\Zabbix\scripts\speedtest.txt
exit
::

:download
C:\Zabbix\scripts\gawk.exe --field-separator="|" "{printf $5}" C:\Zabbix\scripts\speedtest.txt
exit
::

:latencia
C:\Zabbix\scripts\gawk.exe --field-separator="|" "{printf $4}" C:\Zabbix\scripts\speedtest.txt
exit
::