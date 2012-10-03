#!/bin/bash
#
# Firetable start/stop script for Linux
#
### BEGIN INIT INFO
# Provides:          firetable
# Required-Start:    $syslog $network $remote_fs
# Required-Stop:     $syslog $network $remote_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: IPtables firewall script
# Description:       Firetable, a script for IPtable firewalls
### END INIT INFO


# Defaults
if [ -r /etc/firetable/firetable.conf ]; then
	INTERFACES=`grep "^enable_on_boot" /etc/firetable/firetable.conf | cut -f2 -d"=" | sed "s/^ *//"`
fi

function firetable

case "$1" in
	start|stop)
		if [ "${INTERFACES}" = "all" ]; then
			/usr/sbin/firetable $1
		elif [ "${INTERFACES}" != "" ]; then
			/usr/sbin/firetable $1 ${INTERFACES}
		fi
		;;
	restart|force-reload)
		;;
	*)
		echo "Usage: /etc/init.d/firetable {start|stop}"
		exit 1
esac

exit 0
