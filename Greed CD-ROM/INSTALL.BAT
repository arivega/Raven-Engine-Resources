@echo off

first.exe

@echo off
if exist boot.dat goto :makeboot

if exist setup.cfg goto :run
:setup
 setup.exe
:run 
 greed.exe

goto :end

:makeboot
call greedmb

cls
echo  To play In Pursuit of Greed with your boot disk in effect,
echo you must restart your system. Use the procedure your system
echo requires for rebooting after exiting any other applications.
echo .
echo                       IMPORTANT!
echo .
echo  If your hard drive has a dynamic drive overlay, you must
echo reboot WITHOUT the boot disk in the drive and wait for the
echo hard drive to prompt you to "Hit space bar to boot from floppy."
echo Then press space bar and insert your boot disk!

erase boot.dat

:end

