updates=$(checkupdates)
count=$(echo "$updates" | wc -l)

if [ "$updates" = "" ]; then
    echo "up to date"
    echo "up to date"
    # echo "#008000"
else
    echo "$count updates"
    echo "$count updates"
    # echo "#FFFF00"
fi
