
@echo off

echo --------------------------------------------------
echo -------  K U B E N E T E S        K 3 S   --------
echo --------------------------------------------------


set /p c= press 1 to start two services or 2 to start 3 services as k3s :
  if /I "%c%" EQU "1" goto :start1
  if /I "%c%" EQU "2" goto :start2

:start1
C:\"Program Files (x86)"\VMware\"VMware Workstation"\vmrun.exe -T ws start "E:\VMWare files\k3s\master\k3s-master.vmx" nogui
C:\"Program Files (x86)"\VMware\"VMware Workstation"\vmrun.exe -T ws start "E:\VMWare files\k3s\agent-01\k3s-agent-01.vmx" nogui
exit

:start2
C:\"Program Files (x86)"\VMware\"VMware Workstation"\vmrun.exe -T ws start "E:\VMWare files\k3s\master\k3s-master.vmx" nogui
C:\"Program Files (x86)"\VMware\"VMware Workstation"\vmrun.exe -T ws start "E:\VMWare files\k3s\agent-01\k3s-agent-01.vmx" nogui
C:\"Program Files (x86)"\VMware\"VMware Workstation"\vmrun.exe -T ws start "E:\VMWare files\k3s\agent-2\k3s-agent-2.vmx" nogui

exit
