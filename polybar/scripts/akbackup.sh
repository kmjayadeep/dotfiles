#!/bin/bash

# record time elapsed
SECONDS=0
# file contains folders, one per line
filename='/home/aaron/scripts/akbackup_files.txt'
filesize=$(cat /home/aaron/scripts/akbackup_files.txt | wc -l)
updatesize=0
#(
echo "Starting backup"; sleep 1
runvar=0
while read -r line
do
	runvar=$(($runvar + 1))
	name="$line"
	echo '--' $name
  rsync -aAXv --delete $name /media/One\ Piece/backup_acer
#	status_perc=$(($runvar *100 / $filesize))
#	echo $status_perc
done < "$filename"
echo "$filesize folders backed up."
echo "Time: $SECONDS seconds."

#) |

#zenity --progress \
#  --title="Backup Acer > One Piece" \
#  --text="First Task." \
#  --percentage=0 \
