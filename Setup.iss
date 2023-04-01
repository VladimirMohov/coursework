; ��� ����������
#define   Name       "SoftwareManager"
; ������ ����������
#define   Version    "1.0.2"
; ���������
#define   Publisher  "VladimirINC"
; ������
#define   URL        "https://vk.com/vmokhov2000"
; ����������� ����
#define   ExeName    "Software1.3V.exe"
; ������
#define   Icon       "LogoImage.ico"
; ������ ������ ��������
#define   AppURL     "Z:\Program\"
; ������ �������� ����� � ���������� Net 6 && Net 7
#define   NetProgram  "windowsdesktop-runtime-7.0.4-win-x64.exe"
;------------------------------------------------------------------------------
;   ��������� ���������
;------------------------------------------------------------------------------
[Run]
;------------------------------------------------------------------------------
;   ������ ������� ����� �����������
;------------------------------------------------------------------------------
Filename: "{app}\{#NetProgram}"; Flags: postinstall nowait skipifsilent; StatusMsg: Microsoft Framework 7.0 is installed. Please wait...
[Setup]

; ���������� ������������� ����������
AppId={{C700623F-013C-49FB-AD74-FB8CB850679A}

; ������ ����������, ������������ ��� ���������
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}

; ���� ��������� ��-���������
DefaultDirName={autopf}\{#Name}
; ��� ������ � ���� "����"
DefaultGroupName={#Name}

; �������, ���� ����� ������� ��������� setup � ��� ������������ �����
OutputDir={#AppURL}{#Name}-setup
OutputBaseFileName={#Name}-setup

; ���� ������
SetupIconFile={#AppURL}{#Icon}

; ��������� ������
Compression=lzma
SolidCompression=yes
;------------------------------------------------------------------------------
;   ����������� - ��������� ������, ������� ���� ��������� ��� ���������
;------------------------------------------------------------------------------
[Tasks]
; �������� ������ �� ������� �����
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkedonce
;------------------------------------------------------------------------------
;   �����, ������� ���� �������� � ����� �����������
;------------------------------------------------------------------------------
[Files]
; ����������� ����
Source: "{#AppURL}{#ExeName}"; DestDir: "{app}"; Flags: ignoreversion

; ������������� �������
Source: "{#AppURL}*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

; ������
Source: "{#AppURL}{#Icon}"; DestDir: "{app}"

; Net �����������
Source: "{#AppURL}{#NetProgram}"; DestDir: "{app}"
;------------------------------------------------------------------------------
;   ��������� �����������, ��� �� ������ ����� ������
;------------------------------------------------------------------------------ 
[Icons]

Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}";

Name: "{userdesktop}\{#Name}"; Filename: "{app}\{#ExeName}";IconFilename: "{app}\{#Icon}"; Tasks: desktopicon