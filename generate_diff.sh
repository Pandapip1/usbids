#!/bin/sh

curl --insecure -o usb.ids.old https://usb-ids.gowdy.us/usb.ids
echo -E "--- usb.ids" > usb.ids.diff
echo -E "+++ usb.ids" >> usb.ids.diff
diff -u usb.ids.old usb.ids | tail -n +3 >> usb.ids.diff
rm usb.ids.old
cat usb.ids.diff
rm usb.ids.diff
