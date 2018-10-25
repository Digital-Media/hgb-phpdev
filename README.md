# hgb-phpdev
Repo to provide a Vagrantfile for a web development environment for excercises in web lessons

Visit us at https://www.fh-ooe.at/en/hagenberg-campus/

See the [Wiki](https://github.com/Digital-Media/hgb-phpdev/wiki) to learn how the vagrant box was built.

For Troubleshooting Tips see the [Wiki](https://github.com/Digital-Media/hgb-phpdev/wiki/Troubleshooting)

# Install

* Virtualization has to be activated in BIOS
* 6GB Diskspace
* Hyper-V in Windows has to be inactive
* For Windows 7 install new PowerShell
  * http://www.admin-source.de/BlogDeu/999/powershell-4-0-ist-jetzt-zum-download-verfuegbar
  * https://www.microsoft.com/en-us/download/details.aspx?id=40855
* For MAC: System Settings -> Security --> Allow Virtual Box

* Install [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
* Install [Vagrant by HashiCorp](https://www.vagrantup.com/downloads.html)
* Reboot your computer
* Recommended: Install [PHPStorm Toolbox](https://www.jetbrains.com/toolbox/app/) 
* Optional: Install [GitHub Desktop](https://desktop.github.com/)

# Versions tested

* Vagrant 2.1.4
* Virtual Box 5.2.18
* PHPStorm 2018.1.6

# Usage

* Download or clone hgb-phpdev from GitHub
* Open PowerShell or terminal
* ``cd \<path-to\>hgb-phpdev`` 
* Create a directory ``code``
* This ``code`` directory, is mapped to /var/www/html/code in the image via shared folders.
* While first ``vagrant up`` you need a stable internet connection for downloading the box file
* ``vagrant up`` (to start image)
* ``vagrant halt`` (to stop image)
* ``vagrant ssh`` (if you need a bash)
* for more information see [Vagrant Documentation](https://www.vagrantup.com/docs/)

# Test installation and mapping in browser

  * https://192.168.7.7/code
  * https://192.168.7.7/phpmyadmin
