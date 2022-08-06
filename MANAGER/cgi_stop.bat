@echo off

@echo msgbox "Stopping PHP FastCGI...",64,"php-cgi Service" > %temp%\msg.vbs
taskkill /f /IM RunHiddenConsole.exe
taskkill /f /IM php-cgi.exe
@echo msgbox "PHP FastCGI Stopped...",64,"php-cgi Service" >> %temp%\msg.vbs
@echo WScript. Quit(0) >> %temp%\msg.vbs
cscript %temp%\msg.vbs
@del %temp%\msg.vbs
