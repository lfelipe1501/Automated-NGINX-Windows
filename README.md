# Automated-NGINX-Windows

![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/lfelipe1501/Automated-NGINX-Windows/issues)

This repository is created in order to share services automation tools for nginx in windows

# Installation Guide

1. Check out a clone of this repo to a location of your choice, such as:

 `git clone https://github.com/lfelipe1501/Automated-NGINX-Windows.git`

2. To install and use the services for nginx and php-cgi you need to follow the following steps:


- Locate and select the **.exe** files copy and paste on the path where nginx is installed.

![Nginx-Windows](https://lh6.googleusercontent.com/6vIa4e4h6DxErBZG_zBo8eV57ho_rU6YJ55FaxoIZ8B84sjmv0o4OEIwePPHwiEYx1o-xEyKAwCFwQ=w1575-h951-rw)

- Make sure you have the correct path of your PHP and NGINX installation, you must use the following commands to add the PATH in your environment variables and thus ensure the proper functioning of the services:

### Remember to run the console in Administrator mode

![CMD-Windows-Admin](https://lh6.googleusercontent.com/7AuAwcFzKS2kqp2GhkX8Bmvjj1HNswxZTC5WoaV69UxBZCbUTrQvbajXIk0_He9sBmrorIe9_HOg8Q=w1575-h951)

Run the following commands:
```bat
setx PHP_HOME "C:\php"
setx NGINX_HOME "C:\nginx"

setx path "%path%;%php_home%;%nginx_home%"
setx -m path "%path%;%php_home%;%nginx_home%"
```
If all goes well, it should look like this:

![Windows-enviroment](https://lh6.googleusercontent.com/lZrPLjZ_o1xaF7TShB8D-D9Px846FhT5VuUpQhjaPN8Vw581yfe0STdindHYUEcQNjnjeQv9xrOIQw=w1575-h951-rw)

3. Now you can execute from any place in your console the commands to start, restart, stop php-cgi and nginx

![Windows-nginx](https://lh6.googleusercontent.com/Jjv4mvo2V5KRB01TQN2VYegX9lipx59EAko0TN4NFG_ZgyipHo8MtJSXRNIQpZDM271DArhDGKSLig=w1575-h951-rw)

### Contact / Social Media

*Get the latest News about Web Development, Open Source, Tooling, Server & Security*

[![Twitter](https://github.frapsoft.com/social/twitter.png)](https://twitter.com/lfelipe1501)
[![Facebook](https://github.frapsoft.com/social/facebook.png)](https://www.facebook.com/lfelipe1501)
[![Github](https://github.frapsoft.com/social/github.png)](https://github.com/lfelipe1501)

### Development by

Developer / Author: [Luis Felipe Sánchez](https://github.com/lfelipe1501)

Company: [lfsystems](https://www.lfsystems.com.co)
