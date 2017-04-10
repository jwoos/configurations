# Configurations

## Arch Linux
https://wiki.archlinux.org/index.php/Installation_guide  
http://www.bhartiya.io/always-updated-arch-linux-tutorial/30411/2

## Compton

## Cygwin

## Git

## i3 Window Manager

## Mintty

## Neovim

## Nitrogen

## Polybar

## Rofi

## Screen Color Profiles

## Terminator

## Tmux

## Ubuntu
### Dconf backup/restore
```sh
# backup
# path will be / for all
dconf dump /PATH/TO/SETTINGS/ > filename

# load
dconf load /PATH/TO/SETTINGS/ < filname
```

#### Dconf paths
- Terminal: `/org/gnome/terminal/` = `terminal`
- window management: `/org/gnome/desktop/wm/` = `wm`

### udev for fastboot
`/etc/udev/rules.d/51-android.rules`

## systemd

### sleep
`/lib/systemd/system-sleep/`

### service
`/etc/systemd/system/`

To enable services `systemctl enable <SERVICE_NAME>.service`

## Windows
### Map Caps lock to esc
Install auto hot key and use script

## Zsh
