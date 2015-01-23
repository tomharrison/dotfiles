# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Add Bitnami MAMP Stack directories to PATH.
function mamp_path {
	# Check the user Apps dir, then the global dir for a folder named like "mampstack-version".
	# Use the first one found.
	local mamp=$(ls -d -l ~/Applications/** | grep '\/mampstack-.*$' | awk '1; NR == 1 { exit }')
	[ "$mamp" == "" ] && mamp=$(ls -d -l /Applications/** | grep '\/mampstack-.*$' | awk '1; NR == 1 { exit }')
	if [ "$mamp" != "" ]; then
		local fw="$mamp/frameworks"
		[ -d "$mamp/common/bin" ] && PATH="$mamp/common/bin:$PATH"
		[ -d "$mamp/apache2/bin" ] && PATH="$mamp/apache2/bin:$PATH"
		[ -d "$mamp/mysql/bin" ] && PATH="$mamp/mysql/bin:$PATH"
		[ -d "$mamp/php/bin" ] && PATH="$mamp/php/bin:$PATH"
		[ -d "$mamp/sqlite/bin" ] && PATH="$mamp/sqlite/bin:$PATH"
		[ -d "$fw/zendframework/bin" ] && PATH="$fw/zendframework/bin:$PATH"
		[ -d "$fw/symfony/bin" ] && PATH="$fw/symfony/bin:$PATH"
		[ -d "$fw/codeigniter/bin" ] && PATH="$fw/codeigniter/bin:$PATH"
		[ -d "$fw/cakephp/app/Console" ] && PATH="$fw/cakephp/app/Console:$PATH"
	fi
}

#mamp_path
#unset mamp_path

function npm_path {
	PATH="/usr/local/share/npm/bin:$PATH"
}

npm_path
unset npm_path
export NODE_PATH="/usr/local/bin/node"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# golang
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin

source $(brew --prefix nvm)/nvm.sh
export NVM_DIR=~/.nvm