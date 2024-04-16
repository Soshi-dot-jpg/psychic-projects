echo off
set mods = mods.txt

for /f "tokens=*" %%a in (mods.txt) do (
	echo %%a
	curl -O %%a
)


echo alo
pause
