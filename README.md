# Silent Windows USB Eject Icon Remover (VBScript) 🔌🔇

A silent VBScript utility for Windows that automatically hides and suppresses the "Safely Remove Hardware and Eject Media" USB icon from the Windows taskbar system tray on startup.

## Features
- **Zero Console Window Flashes**: Runs natively via `wscript.exe` with `WshShell.Run ..., 0` to execute without popping open a command prompt console window.
- **Registry Tuning**: Updates `HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\SysTray` (`Services = 29 / 0x1D`) to remove the USB eject icon.
- **Automatic Refresh**: Notifies `systray.exe` to update the taskbar icon state immediately.

## Quick Installation

### Method A: Windows Startup Folder (Automated)
Copy `killejectusbicon.vbs` into your Windows Startup folder:
```powershell
Copy-Item "killejectusbicon.vbs" "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\"
```

### Method B: Manual Execution
Double-click `killejectusbicon.vbs` anytime to immediately hide the USB eject tray icon.
