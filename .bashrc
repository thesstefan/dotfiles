export PS1="\[\033[38;5;56m\][\u\[$(tput sgr0)\]\[\033[38;5;104m\] \[$(tput sgr0)\]\[\033[38;5;56m\]->\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;56m\]\W]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;56m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export LS_OPTIONS='--color=auto'
eval "$(dircolors -b ~/.dir_colors)"
alias ls='ls $LS_OPTIONS'

export GAME_CIV5_PATH='/home/stefan/games/civ5'
alias game_civ5='cd $GAME_CIV5_PATH && ./Civ5XP'

export GAME_FTL_PATH='/home/stefan/games/ftl'
alias game_ftl='cd $GAME_FTL_PATH && ./start.sh'

export GAME_CK2_PATH='/home/stefan/games/ck2'
alias game_ck2='cd $GAME_CK2_PATH && ./start.sh'
