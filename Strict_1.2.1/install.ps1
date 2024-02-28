Expand-Archive -Force V1.2.1.zip $Env:UserProfile\GayteIt\STR-iCT

$Shell = New-Object -ComObject Wscript.Shell
$Shortcut = $Shell.CreateShortcut($env:USERPROFILE + "\Desktop\STRiCT.lnk")
# Cible du raccourci
$Shortcut.TargetPath = "$Env:UserProfile\GayteIt\STR-iCT\V1.2.1\strict.exe"
# Dossier cible
$Shortcut.WorkingDirectory = "$Env:UserProfile\GayteIt\STR-iCT\V1.2.1";
# Taille de la fenêtre d'exécution (normale, réduite ou agrandie)
$Shortcut.WindowStyle = 1;
# Raccourci clavier
$Shortcut.Hotkey = "CTRL+SHIFT+F";
$Shortcut.Save()