# hgb-phpdev
Repo to provide a Vagrantfile for a web development environment for excercises in web lessons

Visit us at https://www.fh-ooe.at/en/hagenberg-campus/

# Install

* Virtualization has to be activated in BIOS
* 6GB Diskspace
* Hyper-V in Windows has to be inactive
* For Windows 7 install new PowerShell
  * http://www.admin-source.de/BlogDeu/999/powershell-4-0-ist-jetzt-zum-download-verfuegbar
  * https://www.microsoft.com/en-us/download/details.aspx?id=40855
* For MAC: System Settings -> Security --> Allow Virtual Box

* Install [Virtual Box](https://www.virtualbox.org/wiki/Download_Old_Builds_5_1)
* Install [Vagrant by HashiCorp](https://www.vagrantup.com/downloads.html)
* Reboot your computer
* Recommended: Install [PHPStorm Toolbox](https://www.jetbrains.com/toolbox/app/) 
* Optional: Install [GitHub Desktop](https://desktop.github.com/)

# Versions tested

* Vagrant 1.9.8
* Virtual Box 5.1.28
* PHPStorm 2017.2.3

# Use hgb-phpdev for web development

Clone or download hgb-phpdev from GitHub and install your web project into /var/www/html/code.
A host folder named code in the directory, where the Vagrantfile is stored, is mapped to /var/www/html/code.

# Further Steps

* Open PowerShell or terminal
* ``cd \<path-to\>/hgb-phpdev`` 
* While first ``vagrant up`` you need a stable internet connection
* ``vagrant up`` (to start image)
* ``vagrant halt`` (to stop image)
* ``vagrant ssh`` (if you need a bash)
* for more information see [Vagrant Documentation](https://www.vagrantup.com/docs/)

# Test installation and Mapping in Browser

  * https://192.168.7.7/code
  * https://192.168.7.7/phpmyadmin

# Troubleshooting tips

* Activate virtualization in BIOS/UEFI. Press F2, F10, F12, Esc during startup of your computer.
  * see documentation of your computer for more details.
  * look for "activate VT-X", "Virtualization" or something similar. Sometimes this setting is in the security submenu.
* Use a short path to your *Vagrantfile* without blanks and special characters.
* Keep the downloaded ZIP file for a quick reinstall without needing network access.
* Don't use Windows PowerShell ISE

* If something goes wrong. vagrant doesn't start, hangs or throws errors.
  * Try ``vagrant halt`` and start again with ``vagrant reload``
  * or ``vagrant destroy`` and start again with ``vagrant up``
* For more tips see the Wiki

# Clean reinstall if steps before didn't help

* Windows:
  * Delete ``C:\Users\<username>\.vagrant.d``
  * Delete ``C:\Users\<username>\.Virtualbox``
  * Delete the VM in ``C:\Users\<username>\VirtualBox VMs`` or use Virtual Box for this. Keep VMs you still need in this folder.
  * Delete ``<path-to>/hgb-phpdev-base/.vagrant``
  * ``vagrant up``
  
* MAC:
  * CMD - SHIFT shows hidden files and folders in finder
  * Delete ``/Users/\<username\>/.vagrant.d``
  * Delete ``/Users/\<username\>/Library/VirtualBox``
  * Delete the VM in ``/Users/\<username\>/VirtualBox VMs`` or use Virtual Box for this. Keep VMs you still need in this folder.
  * Delete ``<path-to>/hgb-phpdev-base/.vagrant``
  * ``vagrant up``


# How this box was built

* ``vagrant up`` with [hgb-phpdev-base](https://github.com/Digital-Media/hgb-phpdev-base/tree/v0.9.1)
* connect via ``vagrant ssh``
* In ssh-Terminal: ``sudo dpkg-reconfigure keyboard-configuration``
* Follow the instructions to switch keyboard layout to german
* ``exit``
* In Powershell: ``vagrant package --output hgb-phpdev-base.box``
* Provide the box on [packagist.org](https://app.vagrantup.com/fhooe/boxes/hgb-phpdev)

# Providing a Virtual Box Image, not using Vagrant to start

* copy hgb-phpdev-base.box and Vagrantfile to a different directory
* Remove shared folders and provisioning from Vagrantfile
* Start ``vagrant up`` to extract the Virtual Box Files to Folder "VirtualBox VMs"


* Start Virtual Box GUI 
* Select hgb-phpdev-base Image and clone it to hgb-phpdev-standalone
* Remove all shared folders added by vagrant
* Zip Files. They are provided on [FHOOE Cloud](https://filebox.fhooecloud.at/s/g2yZ0XEMiEaIJ7A)
* Here Students must add there code folder from the host maschine and map it to code
* Start Box
* Login with vagrant/vagrant
* In Shell start ``./mount.sh`` to mount the ``code`` folder of the host to ``/var/www/html/code``.

* Test Installation and Mapping
  * https://192.168.7.7/code
  * https://192.168.7.7/phpmyadmin
