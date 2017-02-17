# Virtualbox

## Mounting Shared Folder
1. install VirtualBox Guest Additions
2. add the folder through virtualbox UI

To mount it: `sudo mount -t vboxsf ubuntushare /path/to/mount/to`

To unmount it: `sudo umount -t vboxsf ubuntushare /path/to/unmount/to`

To have it mount automatically: `mount -t vboxsf share /path/to/mount/to`

Don't forget to add your user to the virtualbox shared folder group: `sudo adduser <user> vboxsf`

