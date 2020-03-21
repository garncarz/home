#!/bin/bash

function run {
	if [[ ! `ps -C $1 | grep $1` ]];
	then
		nohup $@ || true &
	fi
}

killall xfce4-panel

if [[ ! `ps aux | grep -v grep | grep slim` ]];
then
	feh --bg-fill ~/background.jpg
fi

xrdb ~/.Xresources
xsetroot -cursor_name left_ptr
setxkbmap -layout us,cz -variant ,qwerty -option grp:caps_toggle
~/bin/touchpadOff || true

cp ~/.stardict/stardict.cfg{.mine,}

for app in xfce4-panel xfce4-power-manager stardict unclutter
do
	run $app
done
