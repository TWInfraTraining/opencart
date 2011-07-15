#
# Regular cron jobs for the opencart package
#
0 4	* * *	root	[ -x /usr/bin/opencart_maintenance ] && /usr/bin/opencart_maintenance
