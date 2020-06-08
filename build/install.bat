@echo off
cd "C:\Zabbix"
zabbix_agentd.exe --config zabbix_agentd.conf --install
net stop "Zabbix Agent"
net start "Zabbix Agent"
exit
