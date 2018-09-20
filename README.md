# xubuntu-setup
A guide of how to install my Ubuntu config. Mostly for myself as I reinstall machines often.

## Linux distro
For most of my projects, I use ROS Kinetic for which bounds me to use Ubuntu LTS 16.04. Unity is ugly and impractical, that's why I use Xubuntu instead. [Download here](https://xubuntu.org/download)

## Config files
- `.bashrc` - place in home
- `hosts` - place in `/etc/hosts`
- Sublime Text is my fav editor so it has it's own [config repo](https://github.com/Ignat-Georgiev/sublime-sync)

## Customisations
- [Arc X Darker Theme](https://gitlab.com/LinxGem33/X-Arc-White)
- [Arc X Icons](https://gitlab.com/LinxGem33/Arc-X-Icons)
- Panel layout can be found in this repo
- Default file browser - Nautalis

## Keyboard shortcuts
- File Manager - Super + E
- Whiskers Menu - Super + R

## Apps
Available from the repos:
```
blender
cifs-utils
clipit
calibre
chrome
freecad
handbrake
openvpn
CLion
PyCharm
Kazam
jstest-gtk
libre-office
Lightworks
meshlab
pinta
remmina
ros-kinetic-desktop-full
spotify
slack
skype
teamviewer
synergy
ultimate VIM
thunderbird
Sublime text
```

## Useful scripts
- `stop_joy.bash` - when you connect a some joysticks to ubuntu, they start controlling your mouse. This script stops that but allows the joystick to still work as a joystick.
- `wifi_fix.bash` - on my Dell Latitude E5450, my wifi would sometimes refuse to connect to secure networks. This script fixes it for 1 connection attempt.

## Remote file connections
Usually access these through the Nautalis Connect to Server menu
- `sftp://ssh.inf.ed.ac.uk/afs/inf.ed.ac.uk/user/s15/s1521716` - Uni DICE filesystem
- `smb://192.168.0.15/e/` - Samba access for home fileserver
