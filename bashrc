export EDITOR=nvim

#TMUX SETUP
alias ta="TERM=xterm-256color tmux attach-session -t"
alias tn="TERM=xterm-256color tmux new-session -s"
alias tl="tmux ls"
alias tk="tmux kill-session -t"

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

