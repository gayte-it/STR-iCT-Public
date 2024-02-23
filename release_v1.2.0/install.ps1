Expand-Archive -Force v1.2.zip $Env:UserProfile\GayteIt\STR-iCT

$Shell = New-Object -ComObject Wscript.Shell
$Shortcut = $Shell.CreateShortcut($env:USERPROFILE + "\Desktop\STRiCT.lnk")
# Cible du raccourci
$Shortcut.TargetPath = "$Env:UserProfile\GayteIt\STR-iCT\v1.2\strict.exe"
# Dossier cible
$Shortcut.WorkingDirectory = "$Env:UserProfile\GayteIt\STR-iCT\v1.2";
# Taille de la fenêtre d'exécution (normale, réduite ou agrandie)
$Shortcut.WindowStyle = 1;
# Raccourci clavier
$Shortcut.Hotkey = "CTRL+SHIFT+F";
$Shortcut.Save()