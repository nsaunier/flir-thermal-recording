#!/bin/bash

sleep 2m

# Enregistrement sur 5 secondes. Norme ISO 8601 (ex.: 1977-04-22T01:00:00.000-05:00 = 22 avril 1977, à 1 h du matin, UTC-5)
# Change without ":", remove UTC, issues on some operating systems
cvlc rtsp://192.168.250.116:554/ch0 --sout=file/ps:/home/pi/Desktop/enregistrements/$(date +"%Y-%m-%dT%H-%M-%S.%3N").mp4 --avi-index=3 --stop-time=8 vlc://quit

for value in {1..48} # Nombre d'enregistrements
do
  # Enregistrement sur 30 minutes (1800 secondes)
  cvlc rtsp://192.168.250.116:554/ch0 --sout=file/ps:/home/pi/Desktop/enregistrements/$(date +"%Y-%m-%dT%H-%M-%S.%3N").mp4 --avi-index=3 --stop-time=1803 vlc://quit
done
