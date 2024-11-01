# Enable/Disable Built-in Laptop Keyboard

## User Guide

This batch file is designed for Windows systems to enable or disable the built-in keyboard driver. Administrator privileges are required to run this command, and changes will take effect only after a system restart.

### Features
- Toggle the built-in keyboard driver status to enable or disable
- Option to restart the computer immediately to apply changes

### Usage Steps

1. **Run as Administrator**
   - Ensure you start this batch file with administrator privileges. If not, the batch file will automatically exit and display an error message.

2. **Choose the Toggle State**
   - The system will prompt you to enter `D` or `E` to select the keyboard status:
     - `D`: Disable the built-in keyboard
     - `E`: Enable the built-in keyboard
   - If the input is invalid, the system will prompt you to enter again.

3. **Confirm the State Change**
   - Once you have chosen the target state, the system will ask for confirmation. Enter `Y` to confirm or `N` to cancel.

4. **Choose Whether to Restart the Computer Immediately**
   - After confirming the keyboard state change, the system will prompt you to restart the computer:
     - `Y`: Restart immediately, and the change will take effect
     - `N`: Do not restart; the change will take effect on the next system restart

### Notes

- **Administrator Privileges**: Running this batch file requires administrator privileges; otherwise, the program will not be able to set the keyboard state and will automatically exit.
- **Restart Required**: Changing the keyboard state requires a restart to take effect.
- **Compatible System**: This batch file is intended for Windows systems and uses the `sc` command to set the keyboard driver status.

---

# 啟用/停用筆記型電腦內建鍵盤

## 使用說明

此批次檔適用於 Windows 系統，用於啟用或停用內建鍵盤驅動。使用者需具備系統管理員權限執行此指令，並需在重啟電腦後，新的鍵盤狀態才能生效。

### 功能
- 切換鍵盤驅動狀態為啟用或停用
- 可選擇是否立即重啟電腦以套用變更

### 使用步驟

1. **以系統管理員身份運行**
   - 執行批次檔前，確保使用系統管理員身份啟動。若未以系統管理員身份執行，批次檔將提示錯誤並自動結束。

2. **選擇切換狀態**
   - 系統會提示輸入 `D` 或 `E` 來選擇內建鍵盤的狀態：
     - `D`: 停用內建鍵盤
     - `E`: 啟用內建鍵盤
   - 若輸入無效，系統會提示重新輸入。

3. **確認切換狀態**
   - 當選擇了目標狀態後，系統會再次詢問您是否確定切換至此狀態，輸入 `Y` 確認或 `N` 取消。

4. **選擇是否立即重啟電腦**
   - 如果確認切換鍵盤狀態，系統將詢問是否立即重啟電腦：
     - `Y`: 立即重啟，變更立即生效
     - `N`: 不重啟，變更會在下次重啟電腦後生效

### 注意事項

- **系統管理員權限**：執行此批次檔需使用系統管理員身份，否則程式將無法設定鍵盤狀態並會自動結束。
- **重啟需求**：更改鍵盤狀態需重啟電腦才能生效。
- **適用系統**：此批次檔適用於 Windows 系統，並使用 `sc` 指令設定鍵盤驅動的狀態。
