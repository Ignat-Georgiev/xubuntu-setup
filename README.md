# xubuntu-setup
A guide of how to install my Ubuntu config. Mostly for myself as I reinstall machines often.

## Linux distro
For most of my projects, I use ROS Kinetic for which bounds me to use Ubuntu LTS 16.04. Unity is ugly and impractical, that's why I use Xubuntu instead. [Download here](https://xubuntu.org/download)

## Config files
- `.bashrc` - place in home
- `hosts` - place in `/etc/hosts`
- Sublime Text is my fav editor so it has it's own [config repo](https://github.com/Ignat-Georgiev/sublime-sync)

## Customisations
- [Arc X Darker Theme](https://gitlab.com/LinxGem33/X-Arc-White) - Can be downloaded as a .deb package which you can simply install. Then you have to change your theme from both the *Apperance* and *Window Manager* apps.
- [Arc X Icons](https://gitlab.com/LinxGem33/Arc-X-Icons) - download source and put the icon packs into `~/.icons`. Then you will need to update your icons cache for all new installed icon packs using 
``` gtk-update-icons-cache ~/.icons/[some-icon-pack]```
Afterwards you will need to fix some missing icons. This can be done by editing the `index.theme` file in each icon pack. For example, navigate to `~/.icons/Arc-OSX-D/` then edit the index file and change
```
[Icon Theme]  
Name=Arc  
Inherits=Moka,Adwaita,gnome,hicolor  
Comment=Arc Icon theme  
```
to
```
[Icon Theme]  
Name=Arc  
Inherits=ubuntu-mono-dark  
Comment=Arc Icon theme  
```
- Panel layout can be found in this repo
- Default file browser - Nautalis

## Keyboard shortcuts
- File Manager - Super + E
- Whiskers Menu - Super + R

## Apps
### Apps to install with scripts:
- Chrome
- Spotify
- Skype
- Sublime Text 3

### Manual installs
- [CLion](https://www.jetbrains.com/clion/download/#section=linux)
- [PyCharm](https://www.jetbrains.com/pycharm/download/#section=linux)
- [TeamViewer](https://www.teamviewer.com/en/download/linux/)
- [Ultimate VIM](https://github.com/amix/vimrc)
- [Slack](https://slack.com/downloads/linux)

### From repos
```
sudo apt install blender cifs-utils clipit calibre freecad handbrake redshift-gtk openvpn kazam jstest-gtk meshlab pinta remmina synergy thunderbird
```

## Useful scripts
- `stop_joy.bash` - when you connect a some joysticks to ubuntu, they start controlling your mouse. This script stops that but allows the joystick to still work as a joystick.
- `wifi_fix.bash` - on my Dell Latitude E5450, my wifi would sometimes refuse to connect to secure networks. This script fixes it for 1 connection attempt.

## Remote file connections
Usually access these through the Nautalis Connect to Server menu
- `sftp://ssh.inf.ed.ac.uk/afs/inf.ed.ac.uk/user/s15/s1521716` - Uni DICE filesystem
- `smb://192.168.0.15/e/` - Samba access for home fileserver
