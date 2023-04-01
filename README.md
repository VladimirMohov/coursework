# COURSEWORK
Сейчас я покажу вам как же создать установщик из приложения основанного на Net 6 or Net 7

__Шаг нулевой:__

  Устанавливаем [inno setup](https://jrsoftware.org/download.php/is.exe)

__Шаг первый:__
  Скачиваете проект
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229248216-4fe9572f-b772-45cb-84bf-8c14e9c7910e.png)

__Шаг второй:__
  Создаете произвольную папку;
  Изменяте строку подключения из \\SQLEXPRESS в . (Либо в App.xaml, либо в вашем контексте)
  
  `"Server=.;Database=Software;Trusted_Connection=True;TrustServerCertificate=True;"`
  
  Собираете свой проект в Visual studio; (CTRL + B)
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229248635-6f8afbf7-5320-488a-938b-3ebdb50f547a.png)
  
  Главное что-бы собрал без ошибок

__Шаг третий:__
  Откройте собранный проект (папка Debug или Release) __Правый клик по проекту и открыть в проводнике или "Open Folder in File Explorer"__
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229249497-5eb31af8-63fa-421a-8044-8db7cb195753.png)
  
  После откроется проводник с проект переходим в папки bin -> Debug или Release (в зависимости куда собрали) -> net7.0-windows или net6.0-windows
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229249682-7fce54f6-96dd-46f6-b65d-aec786357b4d.png)

  Копируем файлы и переносим в подготовленную папку

__Шаг четвертый:__
  
  В папку которую вы подготовили вам нужно добавить файлы иконки и файл net либо net7 или net6 в зависимости от вашей
  
  Иконка должна иметь формат **.ico**

__Шаг пятый:__

  `#define   Name       "SoftwareManager"` - Изменяем "SoftwareManager" на название вашей программы
  
  `#define   ExeName    "Software1.3V.exe"` - Изменяем "Software1.3V.exe" на полный ваш исполняемый файл
  
  `#define   Icon       "LogoImage.ico"` - Изменяем "LogoImage.ico" на название вашего ico файла иконки
  
  `#define   AppURL     "E:\ApplicationVladimir\Application\"` - Изменяем "E:\ApplicationVladimir\Application\" на путь к вашему проекту с исполняемым файлом
  
  `#define   NetProgram  "windowsdesktop-runtime-7.0.4-win-x64.exe"` - Выбираем либо "windowsdesktop-runtime-7.0.4-win-x64.exe" или "windowsdesktop-runtime-6.0.15-win-x64.exe", в зависимости Net 6 или Net 7
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229251347-47359d60-fae8-419e-8449-c186bef6ebfa.png)
  
  Встаём на AppId={
  
  Жмем **SHIFT + CTRL + G**
  
  Получится так:
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229251501-193c59b8-d878-4be5-913c-44c8d42e9904.png)

  Жмём CTRL + F9
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229252184-ccbed568-90a7-496a-b400-bd6cb288d223.png)

  В исходной папке создаться папка Название вашего приложения-setup
  
__Шаг шестой:__
  
  Запускаете установщик и устанавливаете галочку на создание приложения на рабочем столе 
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229254690-4b05b1e9-95ca-4d7a-acc0-40027a303cb4.png)
  
  В конце установки ставите галочку на доп установке
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229254596-571498a8-c920-4efe-99b1-65def4959f02.png)
  
На рабочем столе появится ваше приложение с вашей иконкой
