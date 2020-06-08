@echo off
C:\Zabbix\scripts\fping.exe %1 -n 1 | C:\Zabbix\scripts\gawk.exe --field-separator=, "/Received/ {printf $2}" | C:\Zabbix\scripts\gawk.exe "{printf $3}"