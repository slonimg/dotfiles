# TMUX 
if [[ $TMUX = "" ]]; then
  # try to reattach sessions
  tmux ls | grep -vq attached && TMUXARG="attach-session -d"
  exec eval "tmux -2 $TMUXARG"
fi

source ~/.dotfiles/zsh/.env
source ~/.dotfiles/zsh/.oh-my-zsh


# add command start time
preexec() { date }

source /Users/g/.rvm/gems/ruby-2.4.6/gems/colorls-1.2.0/lib/tab_complete.sh

source ~/.dotfiles/zsh/.zshrc_aliases
source ~/.dotfiles/zsh/.zshrc_users
source ~/.dotfiles/zsh/.zshrc_misc

