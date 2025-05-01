# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
sourcefile ~/.dotfiles/zsh/.env_work
sourcefile ~/.dotfiles/zsh/.oh-my-zsh
sourcefile ~/.dotfiles/zsh/.zshrc_aliases
sourcefile ~/.dotfiles/zsh/.zshrc_aliases_for_work
sourcefile ~/.dotfiles/zsh/.zshrc_users
sourcefile ~/.dotfiles/zsh/.zshrc_misc
sourcefile ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
