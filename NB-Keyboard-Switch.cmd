@echo off
chcp 65001 > nul

rem 檢查是否以系統管理員身份運行
net session > nul 2>&1
if %errorlevel% neq 0 (
    echo 請以系統管理員身份運行此指令。
    pause
    exit /b
)

rem 檢查當前鍵盤驅動狀態
sc query i8042prt | find "RUNNING" > nul
if %errorlevel% == 0 (
    set "currentState=啟用"
    set "newState=停用"
    set "configCommand=start= disabled"
) else (
    set "currentState=停用"
    set "newState=啟用"
    set "configCommand=start= auto"
)

echo 當前鍵盤狀態: %currentState%

set /p choice="是否要切換內建鍵盤狀態至 [%newState%]? (Y/N): "
if /i "%choice%"=="Y" (
    rem 切換鍵盤狀態
    sc config i8042prt %configCommand% > nul
    if %errorlevel% neq 0 (
        echo 設定失敗，請確認是否以系統管理員身份運行。
        pause
        exit /b
    )

    echo 已切換至 [%newState%] 鍵盤狀態，重啟電腦後生效。

    set /p restartChoice="是否立即重啟電腦？(Y/N): "
    if /i "%restartChoice%"=="Y" (
        echo 正在重啟電腦...
        shutdown /r /t 0
    ) else (
        echo 您選擇不重啟電腦。
    )
) else (
    echo 您選擇不切換鍵盤狀態。
)
