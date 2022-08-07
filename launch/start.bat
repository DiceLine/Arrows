@echo off
chcp 1251

java -version
if %errorlevel% == 9009 (
	echo У вас не установлена Java 8
	echo Или путь к Java не добавлен в переменную Path
	pause
	exit
)

:BEGIN
set /p arrows="Введите кол-во стрел для вывода на экран: "
java Arrows %arrows%
echo Хочешь увидеть еще стрелы))
echo Если да, то введи 1, ыыы)
set /p arrows=""
if %arrows% == 1 (
	goto BEGIN
)