export TERMINAL=alacritty
setxkbmap no
#xrandr --output DVI-D-0 --mode 1920x1080 -r 144 & 
#xrandr --output HDMI-0 --size 2560x1440 -r 120 --panning 0x0+0+0 & 
#xrandr --output HDMI-0 --mode 3840x2160 --scale 1x1 -r 60 --panning 0x0+0+0 & 
#xrandr --output HDMI-0 --mode 3840x2160 --scale 1x1 -r 60 & 
xrandr --output DP-0 --mode 3840x2160 --scale 1x1 -r 144 & 
xset r rate 220 50 &
xset s off -dpms
setxkbmap -option caps:escape &

export QT_SCALE_FACTOR=2
export QT_CURSOR_SIZE=20
export GDK_SCALE=2
export GDK_DPI_SCALE=1

export GOPATH=~/go
export PATH=$PATH:/$GOPATH/bin
export PATH=$PATH:~/.cargo/bin
#export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_QPA_PLATFORMTHEME=qt6ct
