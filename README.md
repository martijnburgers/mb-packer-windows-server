```
  __  __ ____   __        ___           _                     ____                               
 |  \/  | __ )  \ \      / (_)_ __   __| | _____      _____  / ___|  ___ _ ____   _____ _ __     
 | |\/| |  _ \   \ \ /\ / /| | '_ \ / _` |/ _ \ \ /\ / / __| \___ \ / _ \ '__\ \ / / _ \ '__|    
 | |  | | |_) |   \ V  V / | | | | | (_| | (_) \ V  V /\__ \  ___) |  __/ |   \ V /  __/ |       
 |_|__|_|____/     \_/\_/  |_|_| |_|\__,_|\___/ \_/\_/ |___/ |____/_\___|_|    \_/ \___|_|       
 |_   _|__ _ __ ___  _ __ | | __ _| |_ ___  ___   / _| ___  _ __  |  _ \ __ _  ___| | _____ _ __ 
   | |/ _ \ '_ ` _ \| '_ \| |/ _` | __/ _ \/ __| | |_ / _ \| '__| | |_) / _` |/ __| |/ / _ \ '__|
   | |  __/ | | | | | |_) | | (_| | ||  __/\__ \ |  _| (_) | |    |  __/ (_| | (__|   <  __/ |   
   |_|\___|_| |_| |_| .__/|_|\__,_|\__\___||___/ |_|  \___/|_|    |_|   \__,_|\___|_|\_\___|_|   
                    |_|
 MB Windows Server Templates for Packer - Latest version:0.1.0
```

### Introduction

This repository contains a few Windows server templates that can be used to create boxes for Vagrant ([Website](https://www.vagrantup.com/)) ([Github](https://github.com/mitchellh/vagrant)) using Packer ([Website](https://www.packer.io)) ([Github](https://github.com/mitchellh/packer)).

This repo borrowed most of it's bits from [Packer-Windows](https://github.com/joefitzgerald/packer-windows). In fact this repo is forked from the [Packer-Windows](https://github.com/joefitzgerald/packer-windows) repo. All the credits go to all of the contributors of [Packer-Windows](https://github.com/joefitzgerald/packer-windows). Modifications were made to build the boxes my way (i.e. sysprepping on shutdown with custom answer file, first logon command hook, customized vagrant template and disabled password complexity settings). Modifications where also made to work arround some issues I got with the [Packer-Windows](https://github.com/joefitzgerald/packer-windows) templates.

The templates currently support only Virtual Box as the hypervisor but with some work they should be working on other hypervisors as well (I only tested them against Virtual Box). If you look in the original [Packer-Windows](https://github.com/joefitzgerald/packer-windows) repo you will also see support for VMware.

### Getting Started

1. [Download & Install Virtual Box](https://www.virtualbox.org/wiki/Downloads)
2. [Download & Install Vagrant](https://www.vagrantup.com/downloads.html)
3. [Download & Install Packer](https://www.packer.io/downloads.html)
4. Clone this repo to a local directory
5. CD into the directory.

	Trial versions of Windows 2008 R2 / 2012 R2 are used and downloaded by default. These images can be used for 180 days without activation.

6. Run (make sure the packer command is on the PATH):

	```
	packer build windows_2012_r2_sysprepped.json
	```

	After a long wait, the result of the packer build command will be a Vagrant `windows_2012_r2_virtualbox.box` file.

7. Add the box to Vagrant.

	```
	vagrant box add my-new-box file:///d:/mb-windows-server-packer/windows_2012_r2_virtualbox.box
	```

8. Create a directory `my-new-vm` somewhere and CD into it.

9. Init the box.

	```
	vagrant init my-new-box
	```

	This will create a `Vagrantfile` file. Here you can define some properties of your VM and hypervisor. For example the computer name, shared folders or it's IP address.

10. Up your VM.

	```
	vagrant up
	```

	This will create your VM or brings it up if it was already created before.

----------

Alternatively – if you have access to [MSDN](https://msdn.microsoft.com) or [TechNet](https://technet.microsoft.com/) – you can download retail or volume license ISO images and place them in the `iso` directory. If you do, you should supply appropriate values for `iso_url` (e.g. `./iso/<path to your iso>.iso`) and `iso_checksum` (e.g. `<the md5 of your iso>`) to the Packer command. 

For example, to use the Windows 2012 R2 (With update) retail ISO:

1. Download the Windows Server 2012 R2 with update (`en_windows_server_2012_r2_with_update_x64_dvd_6052708.iso`)
2. Verify that `en_windows_server_2012_r2_with_update_x64_dvd_6052708.iso` has an MD5 hash of `78bff6565f178ed08ab534397fe44845` (Microsoft lists a SHA1 hash of `865494e969704be1c4496d8614314361d025775e`, which is equivalent)
3. Move `en_windows_server_2008_r2_with_sp1_x64_dvd_617601.iso` to the `iso` directory
4. Read the Windows Editions and Product Keys section.
5. Run:
    
    ```
    packer build \
        -var iso_url=./iso/en_windows_server_2012_r2_with_update_x64_dvd_6052708.iso \
        -var iso_checksum=78bff6565f178ed08ab534397fe44845 windows_2012_r2_sysprepped.json
    ```

After a long wait, the result of the packer build command will be a Vagrant `windows_2012_r2_virtualbox.box` file. Continue with step 7 from the first list.

For example, to use the Windows 2008 R2 (With SP1) retail ISO:

1. Download the Windows Server 2008 R2 with Service Pack 1 (x64) - DVD (English) ISO (`en_windows_server_2008_r2_with_sp1_x64_dvd_617601.iso`)
2. Verify that `en_windows_server_2008_r2_with_sp1_x64_dvd_617601.iso` has an MD5 hash of `8dcde01d0da526100869e2457aafb7ca` (Microsoft lists a SHA1 hash of `d3fd7bf85ee1d5bdd72de5b2c69a7b470733cd0a`, which is equivalent)
3. Move `en_windows_server_2008_r2_with_sp1_x64_dvd_617601.iso` to the `iso` directory
4. Read the Windows Editions and Product Keys section.
5. Run:
    
    ```
    packer build \
        -var iso_url=./iso/en_windows_server_2008_r2_with_sp1_x64_dvd_617601.iso \
        -var iso_checksum=8dcde01d0da526100869e2457aafb7ca windows_2008_r2_sysprepped.json
    ```
After a long wait, the result of the packer build command will be a Vagrant `windows_2008_r2_virtualbox.box` file. Continue with step 7 from the first list.

### Template Features

Some of the template features:

- Windows updates.
- Sysprepped Vagrant boxes.
	- New computer name (can also be changed by Vagrant)
	- New computer SID.
	- Skip rearming the computer.
	- Plug and Play devices are uninstalled.
	- Plug and play devices that are not detected are removed from the computer.
- WinRM enabled.
- RDP enabled.
- UAC disabled.
- Hibernation disabled.
- No password complexity rules.
- No server manager at server logon.
- Internet Explorer Enhanced Security Configuration disabled.
- Internet Explorer with Google as default search provider.
- Internet Explorer with about:blank homepage.
- PowerShell script execution policy set to RemoteSigned.
- Work network location.
- InputLocale:nl-US.
- SystemLocale:nl-NL.
- UILanguage:en-US.
- UserLocale:nl-NL.
- Auto logon for vagrant user.
- Password expiration for vagrant user disabled.
- First Logon command hook.
- "W. Europe Standard Time" timezone.
- Show file extensions in Explorer.
- Compiled .Net assemblies (Windows 2012 R2 only).
- Command Prompt QuickEdit mode enabled.
- Show Run command in Start Menu.
- Show Administrative Tools in Start Menu.
- Virtual Box guest additions installed.
- SSH Server (needed as Packer communicator).

### Windows Versions

The templates have support for the following operating systems:

 * Windows 2012 R2
 * Windows 2008 R2

### Windows Editions

All Windows Server versions are defaulted to the Server Standard edition. You can modify this by editing the `Autounattend.xml` file, changing the `ImageInstall`>`OSImage`>`InstallFrom`>`MetaData`>`Value` element (e.g. to Windows Server 2012 R2 SERVERDATACENTER).

##### Windows Server 2012 R2
- Windows Server 2012 R2 SERVERSTANDARDCORE
- Windows Server 2012 R2 SERVERSTANDARD
- Windows Server 2012 R2 SERVERDATACENTERCORE
- Windows Server 2012 R2 SERVERDATACENTER

##### Windows Server 2008 R2

- Windows Server 2008 R2 SERVERSTANDARD
- Windows Server 2008 R2 SERVERSTANDARDCORE
- Windows Server 2008 R2 SERVERENTERPRISE
- Windows Server 2008 R2 SERVERENTERPRISECORE
- Windows Server 2008 R2 SERVERDATACENTER
- Windows Server 2008 R2 SERVERDATACENTERCORE
- Windows Server 2008 R2 SERVERWEB
- Windows Server 2008 R2 SERVERWEBCORE

### Product Keys

The `Autounattend.xml` files are configured to work correctly with trial ISOs (which will be downloaded and cached for you the first time you perform a `packer build`). 

If you would like to use retail or volume license ISOs, you need to do the following

1. Update the `UserData`>`ProductKey` element as follows:

	1.1 Uncomment the `<Key>...</Key>` element
	1.2 Insert your product key into the `Key` element

2. Override the Packer `iso_url` and `iso_checksum` variables with the proper values. You can pass them via the Packer command or modify the default values in the `windows_*_*_sysprepped.json` file.

If you are going to configure your VM as a KMS client, you can use the product keys at http://technet.microsoft.com/en-us/library/jj612867.aspx. These are the default values used in the `Key` element.

### Versions

The following combination of versions are known to work:

| Template | Packer | Vagrant | Virtual Box |
| ---------|--------|---------|-------------|
| 0.1.0	   | 0.10.1 | 1.8.1 \ 1.8.4   | 5.0.20 \ 5.0.22 |

### Windows Updates

The scripts in this repo will install all Windows updates – by default – during Windows Setup. This is a _very_ time consuming process, depending on the age of the OS and the quantity of updates released since the last service pack. For example Windows 2008 R2 takes about 5-7 hours. You might want to do yourself a favor during development and disable this functionality, by commenting out the `WITH WINDOWS UPDATES` section and uncommenting the `WITHOUT WINDOWS UPDATES` section in `Autounattend.xml`:

```xml
<!-- WITHOUT WINDOWS UPDATES -->
<SynchronousCommand wcm:action="add">
    <CommandLine>cmd.exe /c C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -File a:\openssh.ps1 -AutoStart</CommandLine>
    <Description>Install OpenSSH</Description>
    <Order>99</Order>
    <RequiresUserInput>true</RequiresUserInput>
</SynchronousCommand>
<!-- END WITHOUT WINDOWS UPDATES -->
<!-- WITH WINDOWS UPDATES -->
<!--
<SynchronousCommand wcm:action="add">
    <CommandLine>cmd.exe /c a:\microsoft-updates.bat</CommandLine>
    <Order>98</Order>
    <Description>Enable Microsoft Updates</Description>
</SynchronousCommand>
<SynchronousCommand wcm:action="add">
    <CommandLine>cmd.exe /c C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -File a:\openssh.ps1</CommandLine>
    <Description>Install OpenSSH</Description>
    <Order>99</Order>
    <RequiresUserInput>true</RequiresUserInput>
</SynchronousCommand>
<SynchronousCommand wcm:action="add">
    <CommandLine>cmd.exe /c C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -File a:\win-updates.ps1</CommandLine>
    <Description>Install Windows Updates</Description>
    <Order>100</Order>
    <RequiresUserInput>true</RequiresUserInput>
</SynchronousCommand>
-->
<!-- END WITH WINDOWS UPDATES -->
```
### OpenSSH vs WinRM

Currently, [Packer](https://packer.io) has a single communicator that uses SSH. This means we need an SSH server installed on Windows - which is not optimal as we could use WinRM to communicate with the Windows VM. In the short term, everything works well with SSH; in the medium term, work is underway on a WinRM communicator for Packer.

If you want to remove the SSH server afterwards read this [issue](https://github.com/joefitzgerald/packer-windows/issues/82).

### Using .box Files With Vagrant

The generated box files include a Vagrantfile template that is suitable for use with Vagrant 1.6.2+, which includes native support for Windows and uses WinRM to communicate with the box. 

My expierence with the combincation Vagrant and WinRM so far is that it's slow and not always responsive. It could take some time before the WinRM service is up. In the `Vagrantfile` templates I therefor added the following. 

```
config.winrm.retry_limit = 30
config.winrm.retry_delay = 10
``` 

Do a `vagrant reload` if even above settings won't help you. I have to do this more then I want.

### Packer Variables

The Packer templates support the following variables:

| Name                | Description                                                      |
| --------------------|------------------------------------------------------------------|
| `iso_url`           | Path or URL to ISO file                                          |
| `iso_checksum`      | Checksum (see also `iso_checksum_type`) of the ISO file          |
| `iso_checksum_type` | The checksum algorithm to use (out of those supported by Packer) |
| `autounattend`      | Path to the Autounattend.xml file                                |

### Sysprep

Sysprep is a system preparation tool for the Microsoft Windows operating system. Normaly desktop deployments are typically performed via disk cloning tools. Sysprep can be used to prepare an operating system for disk cloning and restoration via the cloned disk image. 

Windows operating system installations include many unique elements that need to be generalized before capturing and deploying a disk image to multiple machines. Some of these elements include the computer name, computer\machine Security Identifier (SID) and driver cache.

The Sysprep tool allows for the generation of new computer names, unique SIDs, and custom drive cache databases during the Sysprep process.

A Vagrant box (which can be seen as a cloned disk image) can be used as the machine template for multiple VMs. So therefor we sysprep the box so each created VM wil get it's own computer name, SID and so forth. This prevents problems in certain scenarios for example within a Active Directory domain.

### Answer Files

The system preparation process will use so called answer files which contains all the necessary parameters needed during Windows setup. With these answer files we can perform the installation unattended. As you can see we have two answer files per server operating system.

For example, Windows Server 2012 R2 has the following answer files:

- Autounattend.xml
- Autounattend_sysprep.xml

`Autounattend.xml` is the one that is used first by Packer to partition the disk, set the Windows edition, provide the product key, default language, region, user accounts (ie. vagrant), etc. One other important aspect of the file is the FirstLogonCommands section. This will contain all the commands that needs to be executed during the first logon of a user. This will execute some of the scripts in the script folder and applies some settings to the OS. After all this is done the OS is ready to be packed into a Vagrant box. But before we do that we sysprep the machine during the Packer shutdown. We tell the Sysprep tool to use the `Autounattend_sysprep.xml`. This file is much smaller then the `Autounattend.xml` file. Here you can override the settings of the first answer file. For example here I change the InputLocale, SystemLocal and TimeZone.

All the VM's based on your box are sysprepped by the `Autounattend.xml` and `Autounattend_sysprep.xml` answer files. The first time you up a VM based on your box the system preparation process completes and you are ready to use your VM (unless you have more provision scripts).

### First Logon Command of your new VM

When the first user logs in for the first time the `FirstLogonCommand.ps1` script will be executed. This is defined in the `Autounattend_sysprep.xml` file. The script does absolute nothing and can be replaced with your own script. There are a couple of ways to do this. How, really depends on your use case. You can replace the file in this repo, which means it will be baked into your Vagrant box. This will not always be what you want because it can make your Vagrant box to specific.

Another way is to overwrite the file during the Vagrant provisioning process. This way you can use the same Vagrant box for different VM's with different `FirstLogonCommand.ps1` scripts.

In your `Vagrantfile` put the following

	config.vm.provision "file",  
						source: "scripts/web01/FirstLogonCommand.ps1", 
						destination: "C:\\Windows\\Temp\\FirstLogonCommand.ps1"

There is one important thing to keep in mind and that is that the Vagrant up and provisioning process can be very slow. Your VM will boot faster than the Vagrant provisioning process. So if you logon before the Vagrant provisioning process is done the `FirstLogonCommand.ps1` script will not be overriden and nothing happens. That said the `vagrant` user will be logged in automatically. Fortunately we are in luck here because the system preparation process expects us to enter the Administrator password. You have to wait doing that until the Vagrant provisioning is done. After you enter the Administrator password the vagrant user is automatically logged in and voilà your `FirstLogonCommand.ps1` script will be executed.

### Issues

- If you overwrite the `FirstLogonCommand.ps1` script during Vagrant provisioning you must defer the logon before the provisioning is done. Workaround: wait entering the Administrator password.
- WinRM is not always responding in timely fashion. Not so much a template issue. Workaround: `vagrant reload`.

### Packer Build Timeouts

If for some reason your build doesn't finish before the timeout there must be something wrong. What you could do is setting the headless mode to false and rerun the build. This way you can see what your VM is doing.

Open the `windows_2012_r2_sysprepped.json` or `windows_2008_r2_sysprepped.json` file and search for headless.

	"headless": false,

### Vagrant boxes created with these templates

- TODO

### vNext

Possible features for the next version of this repo.

- Store templates in Atlas for automating and performing cloud builds.
- Powershell DSC support for provisioning the VM.
- Support for Windows Server 2012 R2 core.
- Support for Windows Nano Server.
- Better cleanup of C:\Windows\Temp directory during packer build.
- Find out why WinRM is slow.
- Removing SSH server from VM.
- More out-of-the-box tools?
- Disable screen locks.
- Hyper-V support.
- Find out why we need to enter the Administrator password during first `vagrant up`. This makes the process not 100% unnantended. For me that's not so much of problem and actually I need it in the case of the slow Vagrant provisioning process.
- Win 2008 R2 does not have compiled .Net assemblies. Access is denied for the vagrant user. Maybe running the script in a elevated Powershell will work.
