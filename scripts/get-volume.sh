
muted=$(pamixer --get-volume-human)
volume=$(pamixer --get-volume)

if [ $muted = "muted" ]; then
	echo "♪: $volume% (muted)"
	echo "♪: muted"
	echo "#FFFF00"
else
	echo "♪: $volume%"
	echo "♪: $volume%"
fi
