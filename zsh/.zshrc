function sourcefile {
    if [ -f $1 ]; then
        source $1
    fi
}

# TMUX
if [[ $TMUX = "" ]]; then
  # try to reattach sessions
  tmux ls | grep -vq attached && TMUXARG="attach-session -d"
  exec eval "tmux -2 $TMUXARG"
fi

# add command start time
preexec() { date }

sourcefile ~/.dotfiles/zsh/.env
sourcefile ~/.dotfiles/zsh/.oh-my-zsh
sourcefile ~/.rvm/gems/ruby-2.4.6/gems/colorls-1.2.0/lib/tab_complete.sh
sourcefile ~/.dotfiles/zsh/.zshrc_aliases
sourcefile ~/.dotfiles/zsh/.zshrc_aliases_for_work
sourcefile ~/.dotfiles/zsh/.zshrc_users
sourcefile ~/.dotfiles/zsh/.zshrc_misc
sourcefile ~/.fzf.zsh

