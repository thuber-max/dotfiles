#!/bin/bash
#===============================================================================
#
#          FILE:  setup.sh
# 
#         USAGE:  ./setup.sh 
# 
#   DESCRIPTION:  Setup my dotfiles on a new machine
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  01/26/2015 22:42:19 CST
#      REVISION:  ---
#===============================================================================

STARTDIR=`pwd`

# The path to the directory containing this file
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

# set up my dir colors
cat ${SCRIPTPATH}/dircolors >> ~/.dircolors

# set up my bash file
cat ${SCRIPTPATH}/bashrc >> ~/.bashrc

# setup vim
if [ ! -d "${HOME}/.vim" ] ; then
	git clone https://github.com/thuber-max/vim-ide.git ~/.vim && \
	cd ~/.vim && \
	bash ~/.vim/setup_vim.sh
fi


cd ${STARTDIR}
