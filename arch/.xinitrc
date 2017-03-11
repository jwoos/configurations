# exec i3 -V >> ~/i3log-$(date + '%F-%k-%M-%S') 2>&1
# exec gnome-session
setxkbmap -option caps:escape
xrandr --dpi 191
xcalib -d :0 ~/main/configurations/screenprofiles/xps15-9550/Dell_XPS15_9550_UHD_Touch__7PHPT_LQ156D1_.icm
xinput set-prop 12 'libinput Accel Speed' 0.7
exec i3
