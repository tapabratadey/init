# 00 00 * * * /Documents/04.sh

#!/bin/bash

md5sum /etc/crontab > new.txt
if ! diff -q new.txt old.txt
then
	echo "sup" | mail -s "yolo" root
fi
md5sum /etc/crontab > old.txt
