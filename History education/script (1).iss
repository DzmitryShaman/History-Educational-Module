; Скрипт создан при помощи мастера создания скриптов.
; СМ. ДОКУМЕНТАЦИЮ ДЛЯ ИЗУЧЕНИЯ ДЕТАЛЕЙ ОТНОСИТЕЛЬНО СОЗДАНИЯ ФАЙЛОВ СКРИПТА INNO SETUP!

#define MyAppName "Тест по информатике"
#define MyAppVerName "Информатика"
#define MyAppPublisher "Карина Ющенко"
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
SetupIconFile=D:\AAA_УЧЕБА\Kursovaya Karina\no-translate-detected_318-23480.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "russian"; MessagesFile: "compiler:Default.isl"
Name: "english"; MessagesFile: "compiler:Languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\AAA_УЧЕБА\Kursovaya Karina\Project1.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\AAA_УЧЕБА\Kursovaya Karina\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; ОТМЕТЬТЕ: Не используйте "Флажки: Проигнорировать версию" на любых общедоступных системных файлах

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#MyAppName}}"; Flags: nowait postinstall skipifsilent

