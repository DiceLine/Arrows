@echo off

java -version
if %errorlevel% == 9009 (
	echo � ��� �� ��⠭������ Java 8
	echo ��� ���� � Java �� �������� � ��६����� Path
	pause
	exit
)

:BEGIN
set /p arrows="������ ���-�� ��५ ��� �뢮�� �� �࠭: "
java Arrows %arrows%
echo ����� 㢨���� �� ��५�))
echo �᫨ ��, � ����� 1, ���)
set /p arrows=""
if %arrows% == 1 (
	goto BEGIN
)