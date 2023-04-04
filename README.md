# COURSEWORK
Сейчас я покажу вам как же создать установщик из приложения основанного на __Net 8__, __Net 6__, __Net 7__ или более старых версиях или __NET Framework__

<a name="stepZero">__Шаг нулевой:__</a>

  + Устанавливаем [inno setup](https://jrsoftware.org/download.php/is.exe)
  
  + Устанавливаем [Net 6](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-6.0.15-windows-x64-installer) или [Net 7](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-7.0.4-windows-x64-installer) или [NET Framework 4.8](https://dotnet.microsoft.com/en-us/download/dotnet-framework/thank-you/net48-web-installer) в зависимости на какой версии написанно ваше приложение (Если не знаете посмотрите [__третий шаг__](#stepThree)) [[Все версии NET](https://dotnet.microsoft.com/en-us/download/dotnet)] [[Все версии NET Framework](https://dotnet.microsoft.com/en-us/download/dotnet-framework)]

  &ensp;Можно посмотреть версию в App.config (Если __NET Framework__ )
 
  ![изображение](https://user-images.githubusercontent.com/81241072/229306198-b5c5273a-f636-484a-a286-7e96f7e6228c.png)

  &ensp;Можно посмотреть версию через __ваше приложение -> Свойства/Properties__ (Если __Microsoft NET__ )
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229306343-516a4f38-09c7-4875-b0b5-ab13bf792b7a.png)

  &ensp;Здесь откроется свойство вашего приложения. Здесь вы увидите версию NET.
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229306476-f9c61f88-fb88-491e-ab8f-3b108d87ac67.png)
  
  
<a name="stepOne">__Шаг первый:__</a>
  
  &ensp;Скачиваете проект
  
  Если не знаете нажимаете __Code__ , после Download ZIP
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229259574-fab2ee35-dde1-4ab9-83ca-37cbd4bc88ce.png)
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229248216-4fe9572f-b772-45cb-84bf-8c14e9c7910e.png)
  
  &ensp;Запускаем файл __Setup.iss__

<a name="stepTwo">__Шаг второй:__</a>
  
  &ensp;Открваем Visual Studio с нашим проектом
  
  &ensp;Измените строку подключения из "\\SQLEXPRESS" в "." (Либо в App.xaml, либо в вашем контексте)
  
  Получается вот так:
  
  `"Server=.;Database=Software;Trusted_Connection=True;TrustServerCertificate=True;"`
  
  &ensp;Собираете свой проект в Visual studio; (CTRL + B)
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229248635-6f8afbf7-5320-488a-938b-3ebdb50f547a.png)
  
  &ensp;Главное что-бы собрал без ошибок

<a name="stepThree">__Шаг третий:__</a>
  
  &ensp;Откройте собранный проект (папка Debug или Release) __Правый клик по проекту и открыть в проводнике или "Open Folder in File Explorer"__
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229726673-6177d739-c709-4ef2-b48f-2d3df24e607c.png)
  
  &ensp;После откроется проводник с проект переходим в папки bin -> Debug или Release (в зависимости куда собрали)
  
  &ensp;Там хранятся наши вайлы, и исполняемый файл __.exe__. (__ФАЙЛЫ МОГУТ ОТЛИЧАТСЯ__)
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229727623-892f413f-e216-499a-84a1-830ed1e35262.png)

  &ensp;Создаете произвольную папку, где вам удобнее (**Диски без разницы**)
  
  &ensp;Копируем файлы и переносим в подготовленную папку

<a name="stepFour">__Шаг четвертый:__</a>
  
  &ensp;В папку которую вы подготовили вам нужно добавить файлы иконки и файл net, либо __net7__ или __net6__ или __NET Framework 4.8__ ([Шаг первый](#stepZero)) в зависимости от вашей версии
  
  &ensp;Иконка должна иметь формат **.ico** ([Сайт с иконками](https://icon-icons.com/))

<a name="stepFive">__Шаг пятый:__</a>

  `#define   Name       "SoftwareManager"` - Изменяем __SoftwareManager__ на название вашей программы
  
  `#define   ExeName    "Software1.3V.exe"` - Изменяем __Software1.3V.exe__ на полный ваш исполняемый файл

  ![изображение](https://user-images.githubusercontent.com/81241072/229721721-2b9a851f-0e07-495c-987e-383612e68bbf.png)
  
  `#define   Icon       "LogoImage.ico"` - Изменяем __LogoImage.ico__ на название вашего ico файла иконки
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229724811-aa1fd080-b276-4a7e-bd5b-3ce75d6cd360.png)
  
  `#define   AppURL     "Z:\\Program\\"` - Изменяем __Z:\\Program\\__  __(не забудте закрыть путь - \\)__ на путь к вашей произвольной папке с иконкой, Net и проектом
  
  `#define   NetProgram  "windowsdesktop-runtime-7.0.4-win-x64.exe"` - Выбираем либо __windowsdesktop-runtime-7.0.4-win-x64.exe__ или __windowsdesktop-runtime-6.0.15-win-x64.exe__, в зависимости Net 6 или Net 7 ([Пример имён](#stepOne) и [Установка NET](#stepZero))
  
  Пример с Net 5:
  ![изображение](https://user-images.githubusercontent.com/81241072/229724199-fd7a224b-c055-4ae5-bde8-a8b5b504cc6f.png)

  
  &ensp;Ищем строку AppId={
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229251347-47359d60-fae8-419e-8449-c186bef6ebfa.png)
  
  &ensp;Встаём на AppId={
  
  &ensp;Жмем **SHIFT + CTRL + G**
  
  &ensp;Получится так:
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229251501-193c59b8-d878-4be5-913c-44c8d42e9904.png)

  &ensp;Жмём CTRL + F9
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229252184-ccbed568-90a7-496a-b400-bd6cb288d223.png)

  &ensp;В исходной папке создаться папка Название вашего приложения-setup
  
<a name="stepSix">__Шаг шестой:__</a>
  
  &ensp;Запускаете установщик и устанавливаете галочку на создание приложения на рабочем столе 
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229254690-4b05b1e9-95ca-4d7a-acc0-40027a303cb4.png)
  
  &ensp;В конце установки ставите галочку на доп установке
  
  ![изображение](https://user-images.githubusercontent.com/81241072/229254596-571498a8-c920-4efe-99b1-65def4959f02.png)
  
На рабочем столе появится ваше приложение с вашей иконкой
