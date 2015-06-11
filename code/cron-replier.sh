#!/bin/sh
	
if ! ( grep -q "/root/replier" /etc/crontabs/root 2>/dev/null ) ; then
	SEED="$( dd if=/dev/urandom bs=2 count=1 2>&- | hexdump | if read line; then echo 0x${line#* }; fi )"
	TIME="$(( $SEED % 5 ))"
	echo "* * * * * (sleep $((0+$TIME)) ; /root/replier)" >> /etc/crontabs/root
	echo "* * * * * (sleep $((5+$TIME)) ; /root/replier)" >> /etc/crontabs/root
	echo "* * * * * (sleep $((10+$TIME)) ; /root/replier)" >> /etc/crontabs/root
	echo "* * * * * (sleep $((15+$TIME)) ; /root/replier)" >> /etc/crontabs/root
	echo "* * * * * (sleep $((20+$TIME)) ; /root/replier)" >> /etc/crontabs/root
	echo "* * * * * (sleep $((25+$TIME)) ; /root/replier)" >> /etc/crontabs/root
	echo "* * * * * (sleep $((30+$TIME)) ; /root/replier)" >> /etc/crontabs/root
	echo "* * * * * (sleep $((35+$TIME)) ; /root/replier)" >> /etc/crontabs/root
	echo "* * * * * (sleep $((40+$TIME)) ; /root/replier)" >> /etc/crontabs/root
	echo "* * * * * (sleep $((45+$TIME)) ; /root/replier)" >> /etc/crontabs/root
	echo "* * * * * (sleep $((50+$TIME)) ; /root/replier)" >> /etc/crontabs/root
	echo "* * * * * (sleep $((55+$TIME)) ; /root/replier)" >> /etc/crontabs/root
fi

echo "* * * * * /root/intsense" >> /etc/crontabs/root
echo "* * * * * /root/partnsense" >> /etc/crontabs/root

/etc/init.d/cron enable
/etc/init.d/cron restart

