#!/bin/bash/
# For unix flavors with shred installed.

echo "WARNING: Will change file permissions and will delete protected data!"
echo "Enter file name: "
read fileName

## Start: LittleShreder!
if shred -f -n 5 $fileName
then
	echo "Completed."
	exit 0
else
	echo "Failed."
	exit 1
fi
## End: LittleShreder.