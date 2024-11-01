@echo off

rem Check if running as administrator
net session > nul 2>&1
if %errorlevel% neq 0 (
    echo Please run this command as an administrator.
    pause
    exit /b
)

:inputLoop
set /p choice="Enter the keyboard state to switch to ([E]nable/[D]isable): "
if /i "%choice%"=="D" (
    set "newState=Disabled"
    set "configCommand=start= disabled"
) else if /i "%choice%"=="E" (
    set "newState=Enabled"
    set "configCommand=start= auto"
) else (
    echo Error: Please enter Disable [D] or Enable [E].
    goto inputLoop
)

set /p choice="Do you want to switch the built-in keyboard state to [%newState%]? (Y/N): "
if /i "%choice%"=="Y" (
    rem Switch keyboard state
    sc config i8042prt %configCommand% > nul
    if %errorlevel% neq 0 (
        echo Setting failed. Please check if you are running as administrator.
        pause
        exit /b
    )

    echo Keyboard state switched to [%newState%]. It will take effect after a restart.
) else (
    echo You chose not to switch the keyboard state.
	pause
	exit /b
)
    
set /p choice="Would you like to restart the computer now? (Y/N): "
if /i "%choice%"=="Y" (
	echo Restart!
	shutdown /r /t 0
) else (
	echo Restart canceled.
)
