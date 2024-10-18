; Application Keybinds
; ---------------------

; Windows Terminal (no reason to use others) 
#q::Run "wt" 

; Default Browser (set based on default behavior when opening https)
defaultHTTPS := RegRead("HKCU\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice", "ProgId", "")
browser := RegRead("HKCR\" . defaultHTTPS . "\shell\open\command", "", "")
#w::Run browser 

