@echo off
@rem author Cani
@rem https://github.com/0xC4N1/k2c-quicksave

if "%~1"=="" (
	robocopy /mir "%~dp0quicksave.8" "%~dp0quicksave.9"
	robocopy /mir "%~dp0quicksave.7" "%~dp0quicksave.8"
	robocopy /mir "%~dp0quicksave.6" "%~dp0quicksave.7"
	robocopy /mir "%~dp0quicksave.5" "%~dp0quicksave.6"
	robocopy /mir "%~dp0quicksave.4" "%~dp0quicksave.5"
	robocopy /mir "%~dp0quicksave.3" "%~dp0quicksave.4"
	robocopy /mir "%~dp0quicksave.2" "%~dp0quicksave.3"
	robocopy /mir "%~dp0quicksave.1" "%~dp0quicksave.2"
	robocopy /mir "%~dp0quicksave" "%~dp0quicksave.1"
	robocopy /mir "%USERPROFILE%\AppData\LocalLow\noio\KingdomTwoCrowns" "%~dp0quicksave" || if %ERRORLEVEL% GTR 1 (
		echo Quicksave failed && pause && exit 1
	)
) else (
	mkdir "%USERPROFILE%\AppData\LocalLow\noio\KingdomTwoCrowns"
	robocopy /mir "%~1" "%USERPROFILE%\AppData\LocalLow\noio\KingdomTwoCrowns"
)
