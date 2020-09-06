#!/bin/tcsh -f
# -- mode: tcsh; tab-width: 4; indent-tabs-mode: t; indent-style: tab; encoding: utf-8; --

# check root access
if ( `id -u` != 0 ) then
	echo "You have to install it as root"
	exit 1
endif

# create directories in /etc
[ ! -d /etc/tcsh ] && mkdir /etc/tcsh

# copy files to /etc
cp -rf * /etc/tcsh

# compatibility links
[   -l /etc/complete.tcsh ] && rm /etc/complete.tcsh
[   -w /etc/complete.tcsh ] && mv /etc/complete.tcsh			/etc/complete-tcsh.bak
[ ! -e /etc/complete.tcsh ] && ln -s /etc/tcsh/complete.tcsh	/etc/complete.tcsh
# else you have not write access, you have to use 'sudo'
[   -l /etc/csh.cshrc     ] && rm /etc/csh.cshrc
[   -f /etc/csh.cshrc     ] && mv /etc/csh.cshrc     			/etc/csh-cshrc.bak
[ ! -e /etc/csh.cshrc     ] && ln -s /etc/tcsh/tcshrc			/etc/tcsh/csh.cshrc 
# else you have not write access, you have to use 'sudo'
