@echo off

@echo msgbox "Stopping NGINX Process...",64,"Nginx Service" > %temp%\msg.vbs
taskkill /f /IM nginx.exe
@echo msgbox "NGINX Process Stopped...",64,"Nginx Service" >> %temp%\msg.vbs
@echo WScript. Quit(0) >> %temp%\msg.vbs
cscript %temp%\msg.vbs
@del %temp%\msg.vbs
