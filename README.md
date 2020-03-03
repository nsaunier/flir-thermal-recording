# flir-thermal-recording

## What you'll need
- Raspberry Pi (tested on model 3 B+, but any RPi with an Ethernet port should work) with an SD card
- IP thermal camera (tested on the FLIR FC-690 S)
- Batteries or other power supply

## Usage
1. Begin by installing an OS on the Raspberry Pi
You'll need minimally VLC
The easiest way to do so is by using balenaEtcher (https://www.balena.io/etcher/) and Raspbian with desktop and recommended software (https://www.raspberrypi.org/downloads/raspbian/)

2. Boot the Raspberry Pi a first time to initialize the kernel correctly

3. Add a folder on the Desktop to store the videos

        sudo mkdir <directory-where-sd-card-was-mounted>/rootfs/home/pi/Desktop/enregistrements

4. Copy the file enregistrement.sh to the sd card, in home/pi/Documents

        sudo cp <directory-where-you-saved-the-script>/enregistrement.sh <directory-where-sd-card-was-mounted>/rootfs/home/pi/Desktop

5. Modify .bashrc to execute the script imediatly after boot

        sudo gedit <directory-where-sd-card-was-mounted>/rootfs/home/pi/.bashrc

    Add at the end of the file

        /bin/bash /home/pi/Documents/enregistrement.sh

6. Give the permission to the file (making it readable, writable and executable)

        sudo chmod -R 777 <directory-where-sd-card-was-mounted>/rootfs/home/pi/Documents/enregistrement.sh
