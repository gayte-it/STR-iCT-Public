:: Décompression
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive -Force -Path 'V1.2.1.zip' -DestinationPath '%UserProfile%\GayteIt\STR-iCT'"

:: Shortcut
@echo off

set "SCRIPT=%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

::if exist "C:\Users\%USERNAME%\Desktop\Strict.lnk" (
::    echo file
::)   else (
::    echo not file
    
    echo Dim oWS >> %SCRIPT%
    echo Set oWS = WScript.CreateObject("WScript.Shell"^) >> %SCRIPT%
    echo sLinkFile = "%USERPROFILE%\Desktop\Strict.lnk" >> %SCRIPT%
    echo Set oLink = oWS.CreateShortcut(sLinkFile^) >> %SCRIPT%
    echo oLink.TargetPath = "%UserProfile%\GayteIt\STR-iCT\V1.2.1\Strict.exe" >> %SCRIPT%
    echo oLink.IconLocation = "%UserProfile%\GayteIt\STR-iCT\V1.2.1\Strict.exe"  >> %SCRIPT%
    echo oLink.Save >> %SCRIPT%

    cscript /nologo %SCRIPT%
    del %SCRIPT%
::)
pause