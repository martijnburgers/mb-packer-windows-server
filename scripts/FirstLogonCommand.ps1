# placeholder file which runs after first user logon which obviously does nothing!!!
#
# You can replace\change this file and rebuild the image with packer or overwrite the 
# existing file in C:\Windows\Temp\FirstLogonCommand.ps1 by provisioning it with Vagrant
# with the following line:
#
# config.vm.provision "file",  source: "scripts/FirstLogonCommand.ps1", destination: "C:\\Windows\\Temp\\FirstLogonCommand.ps1"
#