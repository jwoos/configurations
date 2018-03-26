export GDK_SCALE=1.85
export GDK_DPI_SCALE=1.85
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORMTHEME=qt5ct
export NO_AT_BRIDGE=1

export WM=${WM:-i3}

# eval $(ssh-agent)

if [[ $WM == 'i3' ]]; then
	setxkbmap -option caps:escape
	# xrandr --dpi 282
	xrandr --dpi 191
	xrdb -merge ~/.Xresources
	xrdb -merge ~/.extend.Xresources
	xcalib -d :0 ~/main/configurations/screenprofiles/xps15-9550/Dell_XPS15_9550_UHD_Touch__7PHPT_LQ156D1_.icm
	xinput set-prop 12 'libinput Accel Speed' 0.7
	xinput set-prop 12 'libinput Middle Emulation Enabled' 1
	xsettingsd &
	# exec i3 -V >> ~/i3log-$(date + '%F-%k-%M-%S') 2>&1
	exec i3
else
	exec budgie-desktop
fi
