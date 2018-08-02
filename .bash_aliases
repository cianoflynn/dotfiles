# Cian's aliases

# application aliases
alias ymp3='youtube-dl -x --audio-format=mp3'
alias updall='sudo apt-get update && sudo apt-get upgrade -y'
alias updcalibre='sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin'

# git aliases
alias g="git"

# file system navigation aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

#dotcfg git aliases
alias dotcfg='/usr/bin/git --git-dir=$HOME/.config/mydotgit/ --work-tree=$HOME'
