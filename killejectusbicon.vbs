Set WshShell = CreateObject("WScript.Shell")
' Modify SysTray registry key to disable the "Safely Remove Hardware and Eject Media" USB icon
WshShell.Run "reg add ""HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\SysTray"" /v ""Services"" /t REG_DWORD /d 29 /f", 0, True
' Refresh SysTray process silently without spawning a command prompt window
WshShell.Run "systray.exe", 0, False
