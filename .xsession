#!/bin/sh

export LANG=en_US.UTF-8
xrandr --dpi 120
xrdb < ~/.Xdefaults

for m in `ls /usr/local/share/fonts`; do
	if [ -d "/usr/local/share/fonts/$m" ]; then
		xset fp+ "/usr/local/share/fonts/$m"
	fi
done

/home/gonzalo/code/sctd &

xset -b
conky &
cwm
