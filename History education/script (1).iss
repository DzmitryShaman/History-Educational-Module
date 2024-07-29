; ������ ������ ��� ������ ������� �������� ��������.
; ��. ������������ ��� �������� ������� ������������ �������� ������ ������� INNO SETUP!

#define MyAppName "���� �� �����������"
#define MyAppVerName "�����������"
#define MyAppPublisher "������ ������"
#define MyAppURL "http://www.gtek-bks.by/"
#define MyAppExeName "Project1.exe"

[Setup]
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=D:\
OutputBaseFilename=setup
SetupIconFile=D:\AAA_�����\Kursovaya Karina\no-translate-detected_318-23480.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "russian"; MessagesFile: "compiler:Default.isl"
Name: "english"; MessagesFile: "compiler:Languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\AAA_�����\Kursovaya Karina\Project1.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\AAA_�����\Kursovaya Karina\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; ��������: �� ����������� "������: ��������������� ������" �� ����� ������������� ��������� ������

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#MyAppName}}"; Flags: nowait postinstall skipifsilent

