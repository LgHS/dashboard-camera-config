#!/bin/bash
screen -wipe
screen -S camera2 -X quit
screen -dmS camera2 sh -c 'omxplayer --live --fps 15 --layer 10 --win "525 0 1680 1050" rtsp://rtspcam:rtspcam@192.168.11.4:554//h264Preview_01_sub; exec bash'
sleep 15
screen -S camera1 -X quit
screen -dmS camera1 sh -c 'omxplayer --live --fps 15 --layer 20 --win "0 0 700 525" rtsp://rtspcam:rtspcam@192.168.11.2:554//h264Preview_01_sub; exec bash'
sleep 15
screen -S camera3 -X quit
screen -dmS camera3 sh -c 'omxplayer --live --fps 15 --layer 20 --win "0 525 700 1050" rtsp://192.168.42.170:554/ch0_1.h264; exec bash'


