set listurl=https://raw.githubusercontent.com/Soshi-dot-jpg/psychic-projects/main/mmss/exemplelist.txt
:: here, put your list of files url to download

echo off
set rng=%random%
title list downloader
cls
echo.
echo Hello, this program will download files form a list in the internet,
echo here is some info you might need:
echo.
echo List URL: %listurl%
echo.
echo.
echo press any key to continue and process to downloading
pause >nul
curl %listurl% -o %rng%.txt
for /f "tokens=*" %%a in (%rng%.txt) do (
	cls
	echo %%a
	curl -O %%a
)
del %rng%.txt
echo.
echo.
echo Downloads complete!
pause
