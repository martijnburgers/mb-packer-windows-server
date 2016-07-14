*   [1;33mf6a6241[m -[33m (HEAD -> master, origin/master, origin/HEAD)[m Merge pull request #201 from bmolz/revert-sysinternals [32m(5 months ago) [1;33m<Stefan Scherer>[m
[31m|[m[32m\[m  
[31m|[m * [1;33m9b6b812[m -[33m[m Revert "Merge pull request #195 from williamtsoi1/master" [32m(5 months ago) [1;33m<Brendan>[m
* [32m|[m   [1;33m50b5418[m -[33m[m Merge pull request #197 from bmolz/master [32m(5 months ago) [1;33m<Shawn Neal>[m
[33m|[m[34m\[m [32m\[m  
[33m|[m * [32m|[m [1;33m2d63f46[m -[33m[m comment [32m(5 months ago) [1;33m<Brendan>[m
[33m|[m * [32m|[m [1;33me7d99f7[m -[33m[m revert order [32m(5 months ago) [1;33m<Brendan>[m
[33m|[m * [32m|[m   [1;33m0f58a0f[m -[33m[m backmerge [32m(5 months ago) [1;33m<Brendan>[m
[33m|[m [35m|[m[33m\[m [32m\[m  
[33m|[m [35m|[m[33m/[m [32m/[m  
[33m|[m[33m/[m[35m|[m [32m|[m   
* [35m|[m [32m|[m   [1;33md8b4949[m -[33m[m Merge pull request #199 from joefitzgerald/issue-150 [32m(5 months ago) [1;33m<Shawn Neal>[m
[1;31m|[m[1;32m\[m [35m\[m [32m\[m  
[1;31m|[m * [35m|[m [32m|[m [1;33m52b2a90[m -[33m (origin/issue-150)[m Workaround issue 150 [32m(5 months ago) [1;33m<Shawn Neal>[m
[1;31m|[m[1;31m/[m [35m/[m [32m/[m  
* [35m|[m [32m|[m   [1;33mb019065[m -[33m[m Merge pull request #194 from ferhaty/master [32m(5 months ago) [1;33m<Shawn Neal>[m
[32m|[m[1;34m\[m [35m\[m [32m\[m  
[32m|[m [1;34m|[m[32m_[m[35m|[m[32m/[m  
[32m|[m[32m/[m[1;34m|[m [35m|[m   
[32m|[m * [35m|[m [1;33mfc842d4[m -[33m[m Check whether ngen.exe exists and execute only if it exists. Some versions of Windows 7 (e.g. without updates) do not include .NET Framework 4.0 by default. [32m(6 months ago) [1;33m<Ferhat Yildiz>[m
[32m|[m * [35m|[m   [1;33mf77f4d6[m -[33m[m Merge remote-tracking branch 'upstream/master' [32m(6 months ago) [1;33m<Ferhat Yildiz>[m
[32m|[m [1;35m|[m[32m\[m [35m\[m  
[32m|[m [1;35m|[m[32m/[m [35m/[m  
[32m|[m[32m/[m[1;35m|[m [35m|[m   
[32m|[m * [35m|[m [1;33m53a27bc[m -[33m[m Reverted the changes to the autounattend file and added the installation of KB3102810 to the WITH WINDOWS UPDATES section [32m(6 months ago) [1;33m<Ferhat Yildiz>[m
[32m|[m * [35m|[m [1;33m53fda6e[m -[33m[m Added the KB3102810 hotfix to the autounattend file for Windows 7. Added the hotfix to the builders. [32m(6 months ago) [1;33m<Ferhat Yildiz>[m
[32m|[m * [35m|[m [1;33m1b63108[m -[33m[m Added a script for downloading and installing KB3102810 for Windows 7 64-bit. Installing and searching for updates is slow and high CPU usage occurs in Windows 7 (https://support.microsoft.com/en-us/kb/3102810). [32m(6 months ago) [1;33m<Ferhat Yildiz>[m
[32m|[m [1;36m|[m * [1;33ma1ab977[m -[33m[m ngen if exist [32m(6 months ago) [1;33m<Brendan>[m
[32m|[m [1;36m|[m * [1;33m6383d8b[m -[33m[m Fix Windows 7 builds that use Windows Updates [32m(6 months ago) [1;33m<Brendan>[m
[32m|[m [1;36m|[m[32m/[m  
[32m|[m[32m/[m[1;36m|[m   
* [1;36m|[m   [1;33m8b68d49[m -[33m[m Merge pull request #195 from williamtsoi1/master [32m(6 months ago) [1;33m<Stefan Scherer>[m
[1;36m|[m[32m\[m [1;36m\[m  
[1;36m|[m [32m|[m[1;36m/[m  
[1;36m|[m[1;36m/[m[32m|[m   
[1;36m|[m * [1;33m030fd38[m -[33m[m Update compact.bat [32m(6 months ago) [1;33m<William Tsoi>[m
[1;36m|[m[1;36m/[m  
*   [1;33m0ae9e8a[m -[33m[m Merge pull request #182 from RyanJarv/master [32m(9 months ago) [1;33m<Joe Fitzgerald>[m
[33m|[m[34m\[m  
[33m|[m * [1;33m251bb7d[m -[33m[m Fix 2012_r2_hyperv image selection [32m(9 months ago) [1;33m<Ryan Gerstenkorn>[m
[33m|[m[33m/[m  
* [1;33m975eac3[m -[33m[m Remove Chef As Default, Do Not rm -rf /tmp/* [32m(9 months ago) [1;33m<Joe Fitzgerald>[m
*   [1;33m19475cb[m -[33m[m Merge pull request #179 from jbarber/patch-1 [32m(9 months ago) [1;33m<Joe Fitzgerald>[m
[35m|[m[36m\[m  
[35m|[m * [1;33m7da76d8[m -[33m[m Update windows_81.json [32m(10 months ago) [1;33m<Jonathan Barber>[m
[35m|[m[35m/[m  
*   [1;33me4cfb45[m -[33m[m Merge pull request #173 from StefanScherer/update-opensshd-7.1p1-1 [32m(10 months ago) [1;33m<Joe Fitzgerald>[m
[1;31m|[m[1;32m\[m  
[1;31m|[m * [1;33m8d3eab8[m -[33m[m Update OpenSSH 7.1p1-1 [32m(10 months ago) [1;33m<Stefan Scherer>[m
* [1;32m|[m   [1;33mf75a8e1[m -[33m[m Merge pull request #174 from protomouse/variables [32m(10 months ago) [1;33m<Joe Fitzgerald>[m
[1;32m|[m[1;34m\[m [1;32m\[m  
[1;32m|[m [1;34m|[m[1;32m/[m  
[1;32m|[m[1;32m/[m[1;34m|[m   
[1;32m|[m * [1;33m4e61b90[m -[33m[m Use variables [32m(10 months ago) [1;33m<protomouse>[m
[1;32m|[m[1;32m/[m  
*   [1;33m3f99d60[m -[33m[m Merge pull request #172 from StefanScherer/update-vmware-tools-10 [32m(10 months ago) [1;33m<Joe Fitzgerald>[m
[1;35m|[m[1;36m\[m  
[1;35m|[m * [1;33m99d26b2[m -[33m[m Install VMware Tools 10.0.0 [32m(10 months ago) [1;33m<Stefan Scherer>[m
[1;35m|[m[1;35m/[m  
*   [1;33m1fe216d[m -[33m (tag: v1.25)[m Merge pull request #166 from StefanScherer/prepare-release-1.25 [32m(10 months ago) [1;33m<Ken Sykora>[m
[31m|[m[32m\[m  
[31m|[m * [1;33meed9f85[m -[33m[m Update CHANGELOG.md [32m(11 months ago) [1;33m<Stefan Scherer>[m
* [32m|[m   [1;33m3110261[m -[33m[m Merge pull request #168 from MOZGIII/new-chocolatey [32m(11 months ago) [1;33m<Joe Fitzgerald>[m
[33m|[m[34m\[m [32m\[m  
[33m|[m * [32m|[m [1;33m5e88291[m -[33m[m Removed usused chocopacks.bat (without replacement, since it's unused and specific) [32m(11 months ago) [1;33m<MOZGIII>[m
[33m|[m * [32m|[m [1;33mb36662b[m -[33m[m Removed unused and broken chokolatey installer and replaced with a new one [32m(11 months ago) [1;33m<MOZGIII>[m
[33m|[m[33m/[m [32m/[m  
* [32m|[m   [1;33m9edaa88[m -[33m[m Merge pull request #164 from senglin/master [32m(11 months ago) [1;33m<Joe Fitzgerald>[m
[35m|[m[36m\[m [32m\[m  
[35m|[m * [32m|[m [1;33mf8b9d9e[m -[33m[m Increae timeout as update time has lengthened [32m(11 months ago) [1;33m<Seng Lin Shee>[m
[35m|[m * [32m|[m [1;33m4608004[m -[33m[m Fix syntax that prevents update discovery [32m(11 months ago) [1;33m<Seng Lin Shee>[m
[35m|[m [32m|[m[32m/[m  
* [32m|[m   [1;33m29506be[m -[33m[m Merge pull request #165 from StefanScherer/increase-max-memory-per-shell [32m(11 months ago) [1;33m<Joe Fitzgerald>[m
[32m|[m[1;32m\[m [32m\[m  
[32m|[m [1;32m|[m[32m/[m  
[32m|[m[32m/[m[1;32m|[m   
[32m|[m * [1;33ma48400f[m -[33m[m Increase MaxMemoryPerShellMB to 800 to fix WinRM provisioning problems [32m(11 months ago) [1;33m<Stefan Scherer>[m
[32m|[m[32m/[m  
*   [1;33m189b51e[m -[33m[m Merge pull request #163 from StefanScherer/fix-windows-10-winrm [32m(12 months ago) [1;33m<Joe Fitzgerald>[m
[1;33m|[m[1;34m\[m  
[1;33m|[m * [1;33ma2b9d6f[m -[33m[m use fixnetwork.ps1 from misheska [32m(12 months ago) [1;33m<Stefan Scherer>[m
[1;33m|[m[1;33m/[m  
*   [1;33mbe97a14[m -[33m[m Merge pull request #149 from StefanScherer/windows-10-build-10162 [32m(12 months ago) [1;33m<Joe Fitzgerald>[m
[1;35m|[m[1;36m\[m  
[1;35m|[m * [1;33mca60f8c[m -[33m[m list Windows 10 [32m(12 months ago) [1;33m<Stefan Scherer>[m
[1;35m|[m * [1;33mc2a80b2[m -[33m[m update to final eval iso [32m(12 months ago) [1;33m<Stefan Scherer>[m
[1;35m|[m * [1;33m9f1ba0d[m -[33m[m add some provisioner scripts [32m(1 year ago) [1;33m<Stefan Scherer>[m
[1;35m|[m * [1;33m52391c9[m -[33m[m update to windows 10 build 10162 [32m(1 year ago) [1;33m<Stefan Scherer>[m
* [1;36m|[m   [1;33m6ce484b[m -[33m[m Merge pull request #162 from StefanScherer/update-vmware-tools-993 [32m(12 months ago) [1;33m<Joe Fitzgerald>[m
[31m|[m[32m\[m [1;36m\[m  
[31m|[m * [1;36m|[m [1;33mca1c5b8[m -[33m[m update VMware tools to version 9.9.3 [32m(12 months ago) [1;33m<Stefan Scherer>[m
[31m|[m[31m/[m [1;36m/[m  
* [1;36m|[m [1;33mf029e7b[m -[33m[m Revert "manueller Betrieb...", wrong commit message [32m(12 months ago) [1;33m<Stefan Scherer>[m
* [1;36m|[m [1;33m1ad95ff[m -[33m[m manueller Betrieb... [32m(12 months ago) [1;33m<Stefan Scherer>[m
* [1;36m|[m   [1;33m9fc3be3[m -[33m[m Merge pull request #154 from jcoutch/master [32m(12 months ago) [1;33m<Joe Fitzgerald>[m
[1;36m|[m[34m\[m [1;36m\[m  
[1;36m|[m [34m|[m[1;36m/[m  
[1;36m|[m[1;36m/[m[34m|[m   
[1;36m|[m * [1;33m48d9f79[m -[33m[m Fixed UltraDefrag version number [32m(12 months ago) [1;33m<jcoutch>[m
[1;36m|[m * [1;33m8b9fa1f[m -[33m[m Updated Parallels tools section [32m(12 months ago) [1;33m<jcoutch>[m
[1;36m|[m * [1;33m9b4ec05[m -[33m[m Updated Parallels tools section again [32m(12 months ago) [1;33m<jcoutch>[m
[1;36m|[m * [1;33ma573684[m -[33m[m Updated UltraDefrag URL [32m(12 months ago) [1;33m<jcoutch>[m
[1;36m|[m * [1;33md505139[m -[33m[m Change 7-Zip to new URL [32m(12 months ago) [1;33m<jcoutch>[m
[1;36m|[m * [1;33m93d67a8[m -[33m[m Change 7-Zip to new URL [32m(12 months ago) [1;33m<jcoutch>[m
[1;36m|[m * [1;33m1edf073[m -[33m[m Change 7-Zip to new URL [32m(12 months ago) [1;33m<jcoutch>[m
[1;36m|[m * [1;33mfadad7d[m -[33m[m Updated Parallels tools section [32m(12 months ago) [1;33m<jcoutch>[m
[1;36m|[m * [1;33md9a209f[m -[33m[m Added Parallels guest tools to script [32m(12 months ago) [1;33m<jcoutch>[m
[1;36m|[m[1;36m/[m  
* [1;33m5ec4e96[m -[33m[m Remove References To The develop Branch [32m(1 year, 1 month ago) [1;33m<Joe Fitzgerald>[m
*   [1;33m6360234[m -[33m (tag: v1.24)[m Merge branch 'release/v1.24' [32m(1 year, 1 month ago) [1;33m<Stefan Scherer>[m
[35m|[m[36m\[m  
[35m|[m * [1;33m8d79753[m -[33m[m Updated changelog [32m(1 year, 1 month ago) [1;33m<Stefan Scherer>[m
[35m|[m * [1;33m6814fb8[m -[33m[m Update Autounattend.xml [32m(1 year, 1 month ago) [1;33m<TheBigBear>[m
[35m|[m * [1;33m7dce83a[m -[33m[m Updated changelog [32m(1 year, 1 month ago) [1;33m<Stefan Scherer>[m
[35m|[m *   [1;33m52e4f24[m -[33m[m Merge pull request #145 from timsutton/ultradefrag-6.1.0 [32m(1 year, 2 months ago) [1;33m<Joe Fitzgerald>[m
[35m|[m [1;31m|[m[1;32m\[m  
[35m|[m [1;31m|[m * [1;33m4204e08[m -[33m[m Update Ultradefrag to 6.1.0 [32m(1 year, 2 months ago) [1;33m<Timothy Sutton>[m
[35m|[m [1;31m|[m[1;31m/[m  
[35m|[m *   [1;33mffb5847[m -[33m[m Merge pull request #144 from StefanScherer/win10-insider-preview-build-10074 [32m(1 year, 2 months ago) [1;33m<Joe Fitzgerald>[m
[35m|[m [1;33m|[m[1;34m\[m  
[35m|[m [1;33m|[m * [1;33m3628623[m -[33m[m update to Windows 10 Inside Preview Build 10074 [32m(1 year, 2 months ago) [1;33m<Stefan Scherer>[m
[35m|[m [1;33m|[m[1;33m/[m  
[35m|[m *   [1;33mfd2b014[m -[33m[m Merge pull request #111 from StefanScherer/update-openssh-6.6.1p1-3 [32m(1 year, 3 months ago) [1;33m<Joe Fitzgerald>[m
[35m|[m [1;35m|[m[1;36m\[m  
[35m|[m [1;35m|[m * [1;33m6aa8bb6[m -[33m[m use Write-Output [32m(1 year, 5 months ago) [1;33m<Stefan Scherer>[m
[35m|[m [1;35m|[m * [1;33mff585fb[m -[33m[m install setupssh-6.7p1-2.exe [32m(1 year, 5 months ago) [1;33m<Stefan Scherer>[m
[35m|[m [1;35m|[m *   [1;33m1c7d42c[m -[33m[m Merge branch 'update-openssh-6.6.1p1-3' of github.com:StefanScherer/packer-windows into update-openssh-6.6.1p1-3 [32m(1 year, 5 months ago) [1;33m<Stefan Scherer>[m
[35m|[m [1;35m|[m [31m|[m[32m\[m  
[35m|[m [1;35m|[m [31m|[m * [1;33mc6be457[m -[33m[m updated to setupssh-6.7p1-1.exe [32m(1 year, 8 months ago) [1;33m<Stefan Scherer>[m
[35m|[m [1;35m|[m [31m|[m * [1;33m24e04b2[m -[33m[m remove ssh_host_ed25519_key as Vagrant's net-ssh 2.9.1 does not support it [32m(1 year, 9 months ago) [1;33m<Stefan Scherer>[m
[35m|[m [1;35m|[m [31m|[m *   [1;33m5c80ae7[m -[33m[m Merge remote-tracking branch 'upstream/develop' into update-openssh-6.6.1p1-3 [32m(1 year, 9 months ago) [1;33m<Stefan Scherer>[m
[35m|[m [1;35m|[m [31m|[m [33m|[m[34m\[m  
[35m|[m [1;35m|[m [31m|[m * [34m|[m [1;33m8e00cf8[m -[33m[m update to setupssh-6.6.1p1-3 [32m(1 year, 9 months ago) [1;33m<Stefan Scherer>[m
[35m|[m [1;35m|[m * [34m|[m [34m|[m [1;33maaf48f7[m -[33m[m remove ssh_host_ed25519_key as Vagrant's net-ssh 2.9.1 does not support it [32m(1 year, 5 months ago) [1;33m<Stefan Scherer>[m
[35m|[m [1;35m|[m * [34m|[m [34m|[m [1;33mf803337[m -[33m[m update to setupssh-6.6.1p1-3 [32m(1 year, 5 months ago) [1;33m<Stefan Scherer>[m
[35m|[m * [34m|[m [34m|[m [34m|[m   [1;33m831004e[m -[33m[m Merge pull request #120 from gadgetmg/hyperv2012r2 [32m(1 year, 3 months ago) [1;33m<Joe Fitzgerald>[m
[35m|[m [35m|[m[36m\[m [34m\[m [34m\[m [34m\[m  
[35m|[m [35m|[m * [34m|[m [34m|[m [34m|[m [1;33mfeb9bdd[m -[33m[m Add support for Hyper-V Server 2012 R2 [32m(1 year, 8 months ago) [1;33m<Matt Graham>[m
[35m|[m * [36m|[m [34m|[m [34m|[m [34m|[m   [1;33m061b236[m -[33m[m Merge pull request #139 from bigwave/develop [32m(1 year, 3 months ago) [1;33m<Joe Fitzgerald>[m
[35m|[m [1;31m|[m[1;32m\[m [36m\[m [34m\[m [34m\[m [34m\[m  
[35m|[m [1;31m|[m * [36m|[m [34m|[m [34m|[m [34m|[m [1;33m102f6fb[m -[33m[m Stop SearchResult display failing [32m(1 year, 5 months ago) [1;33m<bigwave>[m
[35m|[m [1;31m|[m * [36m|[m [34m|[m [34m|[m [34m|[m [1;33m9cee32a[m -[33m[m Display windows updates that have been installed [32m(1 year, 5 months ago) [1;33m<bigwave>[m
[35m|[m [1;31m|[m [34m|[m [36m|[m[34m/[m [34m/[m [34m/[m  
[35m|[m [1;31m|[m [34m|[m[34m/[m[36m|[m [34m|[m [34m|[m   
[35m|[m * [34m|[m [36m|[m [34m|[m [34m|[m   [1;33m966a204[m -[33m[m Merge pull request #135 from vmrob/limit-updates [32m(1 year, 3 months ago) [1;33m<Joe Fitzgerald>[m
[35m|[m [1;33m|[m[1;34m\[m [34m\[m [36m\[m [34m\[m [34m\[m  
[35m|[m [1;33m|[m * [34m|[m [36m|[m [34m|[m [34m|[m [1;33m928399a[m -[33m[m Define MaxUpdatesPerCycle for updates on 2008 R2 builds [32m(1 year, 5 months ago) [1;33m<Victor Robertson>[m
[35m|[m [1;33m|[m [34m|[m[34m/[m [36m/[m [34m/[m [34m/[m  
[35m|[m * [34m|[m [36m|[m [34m|[m [34m|[m   [1;33m698b60d[m -[33m[m Merge pull request #132 from StefanScherer/add_windows_10_tech_preview [32m(1 year, 4 months ago) [1;33m<Joe Fitzgerald>[m
[35m|[m [34m|[m[1;36m\[m [34m\[m [36m\[m [34m\[m [34m\[m  
[35m|[m [34m|[m [1;36m|[m[34m/[m [36m/[m [34m/[m [34m/[m  
[35m|[m [34m|[m[34m/[m[1;36m|[m [36m|[m [34m|[m [34m|[m   
[35m|[m [34m|[m * [36m|[m [34m|[m [34m|[m [1;33meac4efe[m -[33m[m Windows 10 Technical Preview Build 9926 [32m(1 year, 6 months ago) [1;33m<Stefan Scherer>[m
[35m|[m [34m|[m[34m/[m [36m/[m [34m/[m [34m/[m  
[35m|[m * [36m|[m [34m|[m [34m|[m [1;33m883493c[m -[33m[m Updated changelog with fixed issues [32m(1 year, 7 months ago) [1;33m<Ken Sykora>[m
[35m|[m * [36m|[m [34m|[m [34m|[m   [1;33mc9a58ba[m -[33m[m Merge pull request #121 from JVimes/develop [32m(1 year, 8 months ago) [1;33m<Ken Sykora>[m
[35m|[m [36m|[m[32m\[m [36m\[m [34m\[m [34m\[m  
[35m|[m [36m|[m [32m|[m[36m/[m [34m/[m [34m/[m  
[35m|[m [36m|[m[36m/[m[32m|[m [34m|[m [34m|[m   
[35m|[m [36m|[m * [34m|[m [34m|[m [1;33m147b8dd[m -[33m[m Fixing product key URL in comment. [32m(1 year, 8 months ago) [1;33m<JVimes>[m
[35m|[m [36m|[m * [34m|[m [34m|[m [1;33m760f2b6[m -[33m[m Fixing cut-and-paste error from 2012 autounattend. [32m(1 year, 8 months ago) [1;33m<JVimes>[m
[35m|[m [36m|[m[36m/[m [34m/[m [34m/[m  