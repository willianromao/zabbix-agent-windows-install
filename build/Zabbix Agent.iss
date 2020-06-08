; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Zabbix Agent"
#define MyAppVersion "1.0"
#define MyAppPublisher "Willian Rom�o"
#define MyAppURL "https://github.com/willianromao"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A0AC35CD-C91E-420A-9229-B30E3BB3091B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\Zabbix
DisableDirPage=yes
DefaultGroupName=WillianRomao
DisableProgramGroupPage=yes
OutputDir=C:\Zabbix\build
OutputBaseFilename=Zabbix Agent Setup
SetupIconFile=C:\Zabbix\build\ico.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Zabbix\install.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Zabbix\remove.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Zabbix\zabbix_agentd.conf"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Zabbix\zabbix_agentd.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Zabbix\zabbix_get.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Zabbix\zabbix_sender.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Zabbix\dev\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Zabbix\scripts\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Run]
Filename: "{app}\install.exe"; Flags: nowait postinstall

[UninstallRun]
Filename: "{app}\remove.exe"; Flags: nowait
 
