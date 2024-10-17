#Requires AutoHotKey v2.0.2
#SingleInstance Force
#Include ".\binds\desktop.ahk"
#Include ".\binds\applications.ahk"

; Run yasb
userhome := EnvGet("USERPROFILE")
yasbdir := userhome "\yasb\src\"
yasb := yasbdir "main.py"
if (!ProcessExist("python.exe"))
  Run A_ComSpec ' /c python "' yasb '"', yasbdir, "Hide"
