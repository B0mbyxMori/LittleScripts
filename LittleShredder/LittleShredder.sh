#!/bin/bash/
# For unix systems with shred installed.

echo "WARNING: Will change file permissions and will delete protected data!"
echo "Enter file name: "
read FileName

## Start: LittleShreder!
if shred -f -n 5 $FileName
then
	echo "Completed."
	exit 0
else
	echo "Failed."
	exit 1
fi
## End: LittleShreder.