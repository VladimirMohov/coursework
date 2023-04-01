; Имя приложения
#define   Name       "SoftwareManager"
; Версия приложения
#define   Version    "1.0.2"
; Публицист
#define   Publisher  "VladimirINC"
; Ссылки
#define   URL        "https://vk.com/vmokhov2000"
; Исполняемый файл
#define   ExeName    "Software1.3V.exe"
; Иконка
#define   Icon       "LogoImage.ico"
; Ссылка откуда собирать
#define   AppURL     "Z:\Program\"
; Полное название файла с разширение Net 6 && Net 7
#define   NetProgram  "windowsdesktop-runtime-7.0.4-win-x64.exe"
;------------------------------------------------------------------------------
;   Параметры установки
;------------------------------------------------------------------------------
[Run]
;------------------------------------------------------------------------------
;   Секция запуска после инсталляции
;------------------------------------------------------------------------------
Filename: "{app}\{#NetProgram}"; Flags: postinstall nowait skipifsilent; StatusMsg: Microsoft Framework 7.0 is installed. Please wait...
[Setup]

; Уникальный идентификатор приложения
AppId={{C700623F-013C-49FB-AD74-FB8CB850679A}

; Прочая информация, отображаемая при установке
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}

; Путь установки по-умолчанию
DefaultDirName={autopf}\{#Name}
; Имя группы в меню "Пуск"
DefaultGroupName={#Name}

; Каталог, куда будет записан собранный setup и имя исполняемого файла
OutputDir={#AppURL}{#Name}-setup
OutputBaseFileName={#Name}-setup

; Файл иконки
SetupIconFile={#AppURL}{#Icon}

; Параметры сжатия
Compression=lzma
SolidCompression=yes
;------------------------------------------------------------------------------
;   Опционально - некоторые задачи, которые надо выполнить при установке
;------------------------------------------------------------------------------
[Tasks]
; Создание иконки на рабочем столе
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkedonce
;------------------------------------------------------------------------------
;   Файлы, которые надо включить в пакет установщика
;------------------------------------------------------------------------------
[Files]
; Исполняемый файл
Source: "{#AppURL}{#ExeName}"; DestDir: "{app}"; Flags: ignoreversion

; Прилагающиеся ресурсы
Source: "{#AppURL}*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

; Иконки
Source: "{#AppURL}{#Icon}"; DestDir: "{app}"

; Net подключение
Source: "{#AppURL}{#NetProgram}"; DestDir: "{app}"
;------------------------------------------------------------------------------
;   Указываем установщику, где он должен взять иконки
;------------------------------------------------------------------------------ 
[Icons]

Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}";

Name: "{userdesktop}\{#Name}"; Filename: "{app}\{#ExeName}";IconFilename: "{app}\{#Icon}"; Tasks: desktopicon