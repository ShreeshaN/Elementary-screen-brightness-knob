#!bin/bash

echo "Value ??"
read brightness_value
if [ "$brightness_value" -le 0 ] ; then 
	echo "You can not see anything !!";
	exit;
else 
	if [ "$brightness_value" -gt 100 ] ; then 
	echo "Select within 0-100 range !!";
	exit;
    fi
fi
echo $brightness_value | sudo dd of=/sys/class/backlight/nv_backlight/brightness
