## Installation
> sudo apt install omxplayer screen
> git clone https://github.com/LgHS/dashboard-camera-config.git

## Crontab
Ajouter dans le crontab (remplacer le 15 par la fréquence souhaitée en minute)
> */15 * * * * /home/pi/dashboard-camera-config/camera.sh > /dev/null
