#!/bin/tcsh -f
# -- mode: tcsh; tab-width: 4; indent-tabs-mode: t; indent-style: tab; encoding: utf-8; --

# check parameters access
if ( $#argv != 1 ) then
	echo "usage: $0 <username>"; exit 1
else if ( "$1" == "-h" || "$1" == "--help" ) then
	echo "usage: $0 <username>"; exit 1
else
	set usr="$1"
	set uid=`id -u $usr`
	if ( $uid == "" ) exit 1
	if ( $user != "root" ) then
		if ( $user != $usr ) then
			echo "You need to run it as root"
			exit 1
		endif
	endif
	set dir=`awk -F: '{if($3=="'$uid'"){print $6;exit;}}' /etc/passwd`
	echo "installing to $usr's ($uid) home directory ($dir)"
	exit 2
endif

# create directories in user's home dir
[ ! -d $dir/.tcsh ] && mkdir $dir/.tcsh

# copy files to user's dir
cp -rf * $dir/.tcsh

# compatibility links
[   -l /etc/complete.tcsh ] && rm /etc/complete.tcsh
[   -w /etc/complete.tcsh ] && mv /etc/complete.tcsh			/etc/complete-tcsh.bak
[ ! -e /etc/complete.tcsh ] && ln -s /etc/tcsh/complete.tcsh	/etc/complete.tcsh
# else you have not write access, you have to use 'sudo'
[   -l /etc/csh.cshrc     ] && rm /etc/csh.cshrc
[   -f /etc/csh.cshrc     ] && mv /etc/csh.cshrc     			/etc/csh-cshrc.bak
[ ! -e /etc/csh.cshrc     ] && ln -s /etc/tcsh/tcshrc			/etc/tcsh/csh.cshrc 
# else you have not write access, you have to use 'sudo'

unset dir uid usr
