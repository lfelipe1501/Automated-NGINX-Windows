@echo off

@echo msgbox "Restarting NGINX Process...",64,"Nginx Service" > %temp%\msg.vbs
taskkill /f /IM nginx.exe
start /d %NGINX_HOME% nginx.exe
@echo msgbox "NGINX Process Restarted...",64,"Nginx Service" >> %temp%\msg.vbs
@echo WScript. Quit(0) >> %temp%\msg.vbs
cscript %temp%\msg.vbs
@del %temp%\msg.vbs
