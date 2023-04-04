; Èìÿ ïðèëîæåíèÿ
#define   Name       "SoftwareManager"
; Âåðñèÿ ïðèëîæåíèÿ
#define   Version    "1.0.2"
; Ïóáëèöèñò
#define   Publisher  "Dobryak"
; Ññûëêè
#define   URL        "https://vk.com/vmokhov2000"
; Èñïîëíÿåìûé ôàéë
#define   ExeName    "Software1.3V.exe"
; Èêîíêà
#define   Icon       "LogoImage.ico"
; Ññûëêà îòêóäà ñîáèðàòü
#define   AppURL     "Z:\Program\"
; Ïîëíîå íàçâàíèå ôàéëà ñ ðàçøèðåíèå Net 6 && Net 7
#define   NetProgram  "windowsdesktop-runtime-7.0.4-win-x64.exe"
;------------------------------------------------------------------------------
;   Ïàðàìåòðû óñòàíîâêè
;------------------------------------------------------------------------------
[Run]
;------------------------------------------------------------------------------
;   Ñåêöèÿ çàïóñêà ïîñëå èíñòàëëÿöèè
;------------------------------------------------------------------------------
Filename: "{app}\{#NetProgram}"; Flags: postinstall nowait skipifsilent; StatusMsg: Microsoft Framework 7.0 is installed. Please wait...
[Setup]

; Óíèêàëüíûé èäåíòèôèêàòîð ïðèëîæåíèÿ
AppId={

; Ïðî÷àÿ èíôîðìàöèÿ, îòîáðàæàåìàÿ ïðè óñòàíîâêå
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}

; Ïóòü óñòàíîâêè ïî-óìîë÷àíèþ
DefaultDirName={autopf}\{#Name}
; Èìÿ ãðóïïû â ìåíþ "Ïóñê"
DefaultGroupName={#Name}

; Êàòàëîã, êóäà áóäåò çàïèñàí ñîáðàííûé setup è èìÿ èñïîëíÿåìîãî ôàéëà
OutputDir={#AppURL}{#Name}-setup
OutputBaseFileName={#Name}-setup

; Ôàéë èêîíêè
SetupIconFile={#AppURL}{#Icon}

; Ïàðàìåòðû ñæàòèÿ
Compression=lzma
SolidCompression=yes
;------------------------------------------------------------------------------
;   Îïöèîíàëüíî - íåêîòîðûå çàäà÷è, êîòîðûå íàäî âûïîëíèòü ïðè óñòàíîâêå
;------------------------------------------------------------------------------
[Tasks]
; Ñîçäàíèå èêîíêè íà ðàáî÷åì ñòîëå
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkedonce
;------------------------------------------------------------------------------
;   Ôàéëû, êîòîðûå íàäî âêëþ÷èòü â ïàêåò óñòàíîâùèêà
;------------------------------------------------------------------------------
[Files]
; Èñïîëíÿåìûé ôàéë
Source: "{#AppURL}{#ExeName}"; DestDir: "{app}"; Flags: ignoreversion

; Ïðèëàãàþùèåñÿ ðåñóðñû
Source: "{#AppURL}*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

; Èêîíêè
Source: "{#AppURL}{#Icon}"; DestDir: "{app}"

; Net ïîäêëþ÷åíèå
Source: "{#AppURL}{#NetProgram}"; DestDir: "{app}"
;------------------------------------------------------------------------------
;   Óêàçûâàåì óñòàíîâùèêó, ãäå îí äîëæåí âçÿòü èêîíêè
;------------------------------------------------------------------------------ 
[Icons]

Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}";

Name: "{userdesktop}\{#Name}"; Filename: "{app}\{#ExeName}";IconFilename: "{app}\{#Icon}"; Tasks: desktopicon
