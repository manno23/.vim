#!/bin/sh
# Debian: To activate update the default
# update-alternatives --install /usr/bin/vi vi $HOME/.vim/vim

if [ $(python --version | awk '{print $2}' | cut -c 1) -eq 3 ]
then
	/home/jm/lib/vim+python3/vim $1
else
	/home/jm/lib/vim+python2/vim $1
fi
