updates=$(checkupdates)
count=$(echo "$updates" | wc -l)

if [ "$updates" = "" ]; then
    echo "System up to date"
    echo "System up to date"
    echo "#008000"
else
    echo "$count updates available"
    echo "$count updates available"
    echo "#FFFF00"
fi
