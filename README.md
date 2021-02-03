# flir-thermal-recording

## The project

This project aims at providing support to use [FLIR](https://www.flir.eu/) thermal cameras in conjunction with a Raspeberry Pi. At the end of the installation ones should be able to save thermal records video/pictures on their hardware ([Raspberri Pi](https://www.raspberrypi.org/).

## What you'll need
- Raspberry Pi (tested on model 3 B+, but any RPi with an Ethernet port should work) with an SD card
- IP thermal camera (tested on the FLIR FC-690 S)
- Batteries or other power supply
- DS3231 (optional)

## Setup
1. Begin by installing an OS on the Raspberry Pi

    You'll need minimally VLC. The easiest way to do so is by using [balenaEtcher](https://www.balena.io/etcher/) and [Raspbian](https://www.raspberrypi.org/downloads/raspbian/) with desktop and recommended software.

2. Boot the Raspberry Pi a first time to initialize the kernel correctly

3. Turn off the Raspberry Pi and mount the SD card on your computer

3. Add a folder on the Desktop to store the videos

        sudo mkdir <where-sd-card-was-mounted>/rootfs/home/pi/Desktop/enregistrements

4. Copy the file enregistrement.sh to the sd card, in home/pi/Documents

        sudo cp <where-you-saved-the-script>/enregistrement.sh <where-sd-card-was-mounted>/rootfs/home/pi/Documents

5. Give the right permission to the file (making it readable, writable and executable)

        sudo chmod -R 777 <where-sd-card-was-mounted>/rootfs/home/pi/Documents/enregistrement.sh

6. Modify .bashrc to execute the script imediatly after boot

        sudo gedit <where-sd-card-was-mounted>/rootfs/home/pi/.bashrc

    and add at the end of the file the following line:

        /bin/bash /home/pi/Documents/enregistrement.sh

7. (Optional) You can also add a RTC (Real Time Clock) module such as DS3231

    Boot your Pi with the connected RTC
    
        sudo nano /etc/modules
    
    Add this line at the end of the file
    
        rtc-ds3231
    
    Once you saved the file, modify also the /boot/config.txt
    
        sudo nano /boot/config.txt
    
    By adding this line at the end of the file
    
        dtoverlay=i2c-rtc,ds3231
    
    Remove the [fake-hwclock](https://packages.debian.org/sid/fake-hwclock)
    
        sudo apt-get -y remove fake-hwclock
        sudo update-rc.d -f fake-hwclock remove
    
    Finaly, edit the /lib/udev/hwclock-set file
    
        sudo nano /lib/udev/hwclock-set

    And comment the following lines:
    
        if [ -e /run/systemd/system ] ; then
            exit 0
        fi
    
    You can then reboot your system for changes to take effect
    
        reboot

## Usage
TODO
