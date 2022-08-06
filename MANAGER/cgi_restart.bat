@echo off

@echo msgbox "Restarting PHP FastCGI...",64,"php-cgi Service" > %temp%\msg.vbs
taskkill /f /IM RunHiddenConsole.exe
taskkill /f /IM php-cgi.exe
RunHiddenConsole php-cgi -b 127.0.0.1:9001
RunHiddenConsole php-cgi -b 127.0.0.1:9002
RunHiddenConsole php-cgi -b 127.0.0.1:9003
RunHiddenConsole php-cgi -b 127.0.0.1:9004
RunHiddenConsole php-cgi -b 127.0.0.1:9005
RunHiddenConsole php-cgi -b 127.0.0.1:9006
@echo msgbox "PHP FastCGI Initiated...",64,"php-cgi Service" >> %temp%\msg.vbs
@echo WScript. Quit(0) >> %temp%\msg.vbs
cscript %temp%\msg.vbs
@del %temp%\msg.vbs
