# Configuration files

### Dconf backup/restore
```sh
# backup
# path will be / for all
dconf dump /PATH/TO/SETTINGS/ > filename

# load
dconf load /PATH/TO/SETTINGS/ < filname
```

### udev for fastboot
`/etc/udev/rules.d/51-android.rules`

## systemd

### sleep
`/lib/systemd/system-sleep/`

### service
`/etc/systemd/system/`

To enable services `systemctl enable <SERVICE_NAME>.service`
