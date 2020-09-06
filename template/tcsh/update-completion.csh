#!/bin/tcsh -f

# isonline is a very usefull C utility that I made to check if PCs are online or not.
# It can get parameter the host to check and can return exit codes.
# You can download it from http://github.com/nereusx/unix-utils
if ( ! -X isonline ) then
	alias isonline 'ping 1.1.1.1 -c 1 -w 1 > /dev/null && echo yes || echo no'
endif

# !internet?
if ( `isonline` == "no" ) then
	echo "You need to get online first"
	exit 1
endif

# make backup && download it
set src='https://raw.githubusercontent.com/tcsh-org/tcsh/master/complete.tcsh'
set fn=complete.tcsh
set bk=${fn:s/./-/}.bak
if ( "$user" == "root" ) then
	mv /etc/tcsh/$fn /etc/tcsh/$bk
	wget $src -O /etc/tcsh/$fn
	if ( -d ~/.tcsh ) then
		[ -l ~/.tcsh/$fn ] && rm ~/.tcsh/$fn
		[ -f ~/.tcsh/$fn ] && mv ~/.tcsh/$fn ~/.tcsh/$bk
		ln -sf /etc/tcsh/$fn ~/.tcsh/$fn
		echo "link to /etc/tcsh/$fn created"
	endif
else
	mv ~/.tcsh/$fn ~/.tcsh/$bk
	wget $src -O ~/.tcsh/$fn
endif

# finish
echo "done"
