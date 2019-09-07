# xubuntu-setup

**ATTENTION**
This repository has been [moved here](https://gitlab.com/imgeorgiev/ubuntu_setup)

A guide of how to install my Ubuntu config. Mostly for myself as I reinstall machines often.

## Linux distro
For most of my projects, I use ROS Kinetic for which bounds me to use Ubuntu LTS 16.04. Unity is ugly and impractical, that's why I use Xubuntu instead. [Download here](https://xubuntu.org/download)

## Config files
- `.bashrc` - place in home
- `hosts` - place in `/etc/hosts`
- Sublime Text is my fav editor so it has it's own [config repo](https://github.com/Ignat-Georgiev/sublime-sync)

## Customisations
- [Arc X Darker Theme](https://gitlab.com/LinxGem33/X-Arc-White) - Can be downloaded as a .deb package which you can simply install. Then you have to change your theme from both the *Apperance* and *Window Manager* apps.
- [Arc X Icons] - Installed from install scripts folder
- Panel layout can be found in this repo
- Default file browser - Nautalis

## Keyboard shortcuts
- File Manager - Super + E
- Whiskers Menu - Super + R

## Apps
Just run the script `install.sh` with sudo to install everything.
Otherwise, you are free to install whatever you fancy

Don't forget to configure:
- ODrive

### Manual installs
- [CLion](https://www.jetbrains.com/clion/download/#section=linux) - remember to sync settings
- [PyCharm](https://www.jetbrains.com/pycharm/download/#section=linux) - remember to sync settings		
- [TeamViewer](https://www.teamviewer.com/en/download/linux/)
- [Ultimate VIM](https://github.com/amix/vimrc)
- [Slack](https://slack.com/downloads/linux)
- [Anaconda](https://www.anaconda.com/download/) - Note that Anaconda has some issues running with ROS. For this purpose remove the path sourcing for it from `.bashrc` and source it only whenever needed. For that purpose I have made a custom command called `start_conda` within the `.custom_commands.bash` file
- Install VSCode extensions using the Settings Sync extension from the VSCode marketplace


## Useful scripts
- `stop_joy.bash` - when you connect a some joysticks to ubuntu, they start controlling your mouse. This script stops that but allows the joystick to still work as a joystick.
- `wifi_fix.bash` - on my Dell Latitude E5450, my wifi would sometimes refuse to connect to secure networks. This script fixes it for 1 connection attempt.

## Remote file connections
Usually access these through the Nautalis Connect to Server menu
- `sftp://ssh.inf.ed.ac.uk/afs/inf.ed.ac.uk/user/s15/s1521716` - Uni DICE filesystem
- `smb://192.168.0.15/e/` - Samba access for home fileserver

## Configure RDP
Enable sharing from the RDP menu by launching terminal with `vino-preferences` and enabling sharing.

## Set up file manager
- Changed default file manager in *Preferred Applications*
- Set up nautilus in list mode with `gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'`

## Git setup
Remember to use `git config credential.helper store` to save credentials

