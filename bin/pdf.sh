#! /bin/bash

for d in tmp/*/ ; do
	f="tmp/$(basename -- $d).pdf"
	echo "making $f..."
	convert "$d*" $f
done

echo "done."