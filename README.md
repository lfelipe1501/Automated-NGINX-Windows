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


- Locate and select the **.exe** files in the folder **_Executable_** copy and paste on the path where nginx is installed.

![Nginx-Windows](https://raw.githubusercontent.com/lfelipe1501/lfelipe-projects/master/nginx-windows/Install1.png)

These executables were created with the software [bat2exe converter](http://www.f2ko.de/es/b2e.php) of [F2KO SOFTWARE](http://www.f2ko.de), please take into account f2ko's recommendations for the executables created with your software:

**_Some antivirus programs automatically flag the exe files that this application creates as malware. If you encounter a false positive, in which a converted exe is erroneously recognized as malware, please contact the offending antivirus vendor for further assistance._**

- Make sure you have the correct path of your PHP and NGINX installation, you must use the following commands to add the PATH in your environment variables and thus ensure the proper functioning of the services:

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

   | In **cgi** service the config used is: 127.0.0.1:9000 |
   | ----------------------------------------------------- |

![Windows-nginx](https://raw.githubusercontent.com/lfelipe1501/lfelipe-projects/master/nginx-windows/Capture.PNG)

### Contact / Social Media

*Get the latest News about Web Development, Open Source, Tooling, Server & Security*

[![Twitter](https://github.frapsoft.com/social/twitter.png)](https://twitter.com/lfelipe1501)
[![Facebook](https://github.frapsoft.com/social/facebook.png)](https://www.facebook.com/lfelipe1501)
[![Github](https://github.frapsoft.com/social/github.png)](https://github.com/lfelipe1501)

### Development by

Developer / Author: [Luis Felipe Sánchez](https://github.com/lfelipe1501)

Company: [lfsystems](https://www.lfsystems.com.co)
