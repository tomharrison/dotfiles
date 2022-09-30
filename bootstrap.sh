#!/bin/bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

function installDotfiles() {
	# Install using rsync archive mode. Recursively copies the contents of this repo into $HOME
	# without removing files from the destination which aren't in the source.
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
	source ~/.bash_profile
}

function setupHomebrew() {
	echo
	read -p "Do you want to update and upgrade Homebrew packages? " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		~/scripts/homebrew_setup.sh
	fi
}

function setupNodeJS() {
	echo
	read -p "Do you want to run the global Node.js setup? " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		~/scripts/nodejs_setup.sh
	fi
}

function doIt() {
	installDotfiles
	setupHomebrew
	setupNodeJS
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
unset setupNodeJS
unset setupHomebrew
unset installDotfiles