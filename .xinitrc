if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Setup graphics
xrandr --output eDP1 --primary
xrandr --dpi 160

# Turn off the horid PC speaker bell
xset -b

# Enable keybinds
xbindkeys -p

exec i3 -V >> ~/.i3/log 2>&1
exec i3
