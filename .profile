export TERMINAL=alacritty
setxkbmap no
xrandr --output DVI-D-0 --mode 1920x1080 -r 144 & 
xset r rate 180 55 &
setxkbmap -option caps:escape &

export GOPATH=~/go
export PATH=$PATH:/$GOPATH/bin
#export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_QPA_PLATFORMTHEME=qt6ct
