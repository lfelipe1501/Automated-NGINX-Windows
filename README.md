# Automated-NGINX-Windows

![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/lfelipe1501/Automated-NGINX-Windows/issues)

This repository is created in order to share services automation tools for nginx in windows

# Installation Guide

1. You can clone this repository and copy the .BAT files into the nginx binary folder you have installed on your computer.:

- ```bash 
   git clone https://github.com/lfelipe1501/Automated-NGINX-Windows.git
  ```

2. To install and use the services for nginx and php-cgi you need to follow the following steps:


- Locate and select the **.bat** files in the folder **_MANAGER_** copy and paste on the path where nginx is installed.

![Nginx-Windows](https://raw.githubusercontent.com/lfelipe1501/lfelipe-projects/master/nginx-windows/Install1.png)

- Make sure you have the correct path of your php and nginx services inside the windows variables, you can also use these commands to add them by adjusting the paths of the binaries on your computer:

### Remember to run the PowerShell in Administrator mode
![CMD-Windows-Admin](https://raw.githubusercontent.com/lfelipe1501/lfelipe-projects/master/nginx-windows/cmdasadmin.png)

Run the following commands:
```pwsh

# Set user VARIABLES
setx PHP_HOME "D:\serverlocal\php"
setx NGINX_HOME "D:\serverlocal\nginx"

# Set System Global VARIABLES
setx -m PHP_HOME "D:\serverlocal\php"
setx -m NGINX_HOME "D:\serverlocal\nginx"

# Set user PATH VARIABLES
[Environment]::SetEnvironmentVariable("path", $env:path + ";%PHP_HOME%;%NGINX_HOME%", "User")

# Set System Global PATH VARIABLES
[Environment]::SetEnvironmentVariable("path", $env:path + ";%PHP_HOME%;%NGINX_HOME%", "Machine")

```
If all goes well, it should look like this:

![Windows-enviroment](https://raw.githubusercontent.com/lfelipe1501/lfelipe-projects/master/nginx-windows/path.PNG)

3. Now you can execute from any place in your console the commands to start, restart, stop php-cgi and nginx

| In **cgi** service the config used is: 127.0.0.1:900x |
| ----------------------------------------------------- |

> *in the bat script 6 php cgi processes are created for the nginx, you can edit the script in the _restart and _start options to create more or decrease these processes.*


![Windows-nginx](https://raw.githubusercontent.com/lfelipe1501/lfelipe-projects/master/nginx-windows/Capture.PNG)

### Contact / Social Media

*Get the latest News about Web Development, Open Source, Tooling, Server & Security*

[![Twitter](https://github.frapsoft.com/social/twitter.png)](https://twitter.com/lfelipe1501)
[![Facebook](https://github.frapsoft.com/social/facebook.png)](https://www.facebook.com/lfelipe1501)
[![Github](https://github.frapsoft.com/social/github.png)](https://github.com/lfelipe1501)

### Development by

Developer / Author: [Luis Felipe Sánchez](https://github.com/lfelipe1501)

Company: [lfsystems](https://www.lfsystems.com.co)
