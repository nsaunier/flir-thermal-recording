# flir-thermal-recording

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

TODO: explanation to use the [DS3231 module](https://www.youtube.com/watch?v=9aN2ocO2AWY&fbclid=IwAR33J0hH_mVIZ8hJz-R_pkl1oTHK7u2YLEb1HO17pE6eJCj02H-VLaFHYGI)

## Usage
TODO