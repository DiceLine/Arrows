@echo off
chcp 1251

java -version
if %errorlevel% == 9009 (
	echo � ��� �� ����������� Java 8
	echo ��� ���� � Java �� �������� � ���������� Path
	pause
	exit
)

:BEGIN
set /p arrows="������� ���-�� ����� ��� ������ �� �����: "
java Arrows %arrows%
echo ������ ������� ��� ������))
echo ���� ��, �� ����� 1, ���)
set /p arrows=""
if %arrows% == 1 (
	goto BEGIN
)