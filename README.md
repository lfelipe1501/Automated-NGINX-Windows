# Automated-NGINX-Windows

![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/lfelipe1501/Automated-NGINX-Windows/issues)

This repository is created in order to share services automation tools for nginx in windows

# Installation Guide

1. Check out a clone of this repo to a location of your choice, such as:

- `git clone https://github.com/lfelipe1501/Automated-NGINX-Windows.git`

2. To install and use the services for nginx and php-cgi you need to follow the following steps:


- Locate and select the **.exe** files in the folder **_Executable_** copy and paste on the path where nginx is installed.

![Nginx-Windows](https://raw.githubusercontent.com/lfelipe1501/lfelipe-projects/master/nginx-windows/Install1.png)

- Make sure you have the correct path of your PHP and NGINX installation, you must use the following commands to add the PATH in your environment variables and thus ensure the proper functioning of the services:

### Remember to run the console in Administrator mode
![CMD-Windows-Admin](https://raw.githubusercontent.com/lfelipe1501/lfelipe-projects/master/nginx-windows/cmdasadmin.png)

Run the following commands:
```Batch
setx PHP_HOME "C:\php"
setx NGINX_HOME "C:\nginx"

setx path "%path%;%php_home%;%nginx_home%"
setx -m path "%path%;%php_home%;%nginx_home%"
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
