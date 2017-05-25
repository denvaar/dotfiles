export GOPATH=$HOME/Documents/Programming/go
export PATH=$PATH:$GOPATH/bin

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Define colors
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"

C_BLUE_NICE="\[\033[38;05;30m\]"
C_GREEN_NICE="\[\033[38;05;130m\]"
C_PURPLE_NICE="\[\033[38;05;22m\]"
C_NEW="\[\033[38;05;157m\]"
C_NEW2="\[\033[38;05;69m\]"

emojis[0]="🔥"
emojis[1]="🍕"
emojis[2]="🎃"
emojis[3]="👾"
emojis[4]="🏀"
emojis[5]="👻"
emojis[6]="☠️"
emojis[7]="🤡"
emojis[8]="💋"
emojis[9]="🦆"

function pick_emoji {
  echo "\${emojis[\$(( ( \$RANDOM % 10 ) ))]}"
}

# Set prompt color
export PS1="$C_BLUE\u${C_RED} :: $C_DEFAULT$C_GREEN\W$C_DEFAULT$C_NEW2 `pick_emoji`  $C_DEFAULT"

# added by Miniconda 3.10.1 installer
# export PATH="/Users/denversmith/miniconda/bin:$PATH"
export PATH="/Users/denver/nvim-osx64/bin:$PATH"

alias vim="nvim"
alias dockerbash="bash -c \"clear && DOCKER_HOST=tcp://192.168.99.100:2376 DOCKER_CERT_PATH=/Users/denversmith/.docker/machine/machines/default DOCKER_TLS_VERIFY=1 /bin/bash\""

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
