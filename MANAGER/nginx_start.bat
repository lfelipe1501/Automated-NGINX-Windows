@echo off

@echo msgbox "Starting NGINX Process...",64,"Nginx Service" > %temp%\msg.vbs
start /d %NGINX_HOME% nginx.exe
@echo msgbox "NGINX Process Initiated...",64,"Nginx Service" >> %temp%\msg.vbs
@echo WScript. Quit(0) >> %temp%\msg.vbs
cscript %temp%\msg.vbs
@del %temp%\msg.vbs
