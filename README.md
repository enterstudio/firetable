Firetable
=========
Firetable is a tool written in PHP to maintain IPtables firewalls under Linux. Firetable has been written by Hugo Leisink <hugo@leisink.net>.

Installation
------------
To install Firetable, run 'make install'. This will install the Firetable script in /usr/sbin and the Firetable configuration in /etc/firetable. Use the DESTDIR parameter to install Firetable in a different location. In that case, also change the CONFIG_DIR setting inside the Firetable script.

To create a Firetable Debian package, execute the script 'extra/make_debian_package'.
