#!/usr/bin/bash
cd /usr/share/tiles/16
export count=78

export total=1628
for y in {27679..27667}; do
  mkdir $y
	for x in {45694..45699}; do
	wget https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/16/$y/$x -O /usr/share/tiles/16/$y/$x
	sleep 0.08
		count=$((count + 1))
		echo "\n $y/$x.png    --------------- $count/$total\n"
	done
done

rm /root/down.sh
systemctl stop down
