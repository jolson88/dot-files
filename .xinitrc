if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Setup graphics
xrandr --output Virtual1 --primary
xrandr --dpi 160

# Turn off the horid PC speaker bell
xset -b

# Extra VMware setup (as we are in multi-user.target 
# instead of graphical.target
systemctl start vmware-vmblock-fuse.service &
vmware-user-suid-wrapper &

#exec i3 -V >> ~/.i3/log 2>&1
exec i3
