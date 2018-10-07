# dotfiles by Nicolas Perraud <np@bitbox.io>

SHELL := /bin/bash

default:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

install:	## Install dotfiles in your home directory
install: dotfiles

dotfiles:
	@read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1 CONTINUE; \
	echo ""; \
	[ $$CONTINUE = "y" ] || [ $$CONTINUE = "Y" ] || (echo "Exiting."; exit 1;)
	
	rsync --exclude ".git/" \
	--exclude ".DS_Store" \
	--exclude "*/.gitkeep" \
	-avh --no-perms ./homedir/. ~
