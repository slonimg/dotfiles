#!/usr/bin/env bash

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install some oh-my-zsh plugins
# Command Time
git clone https://github.com/popstas/zsh-command-time.git ~/.oh-my-zsh/custom/plugins/command-time
# Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# setup zsh configurations
pushd ~
cp .zshrc .zshrc_backup
rm .zshrc
ln -s -f .dotfiles/zsh/.zshrc .zshrc

# setup tmux configurations
cp .tmux.conf .tmux.conf.backup
cp .tmux.conf.local .tmux.conf.local.backup
rm .tmux.conf .tmux.conf.local

ln -s -f .dotfiles/tmux/.tmux.conf .tmux.conf
ln -s -f .dotfiles/tmux/.tmux.conf.local .tmux.conf.local

#setup vim configuration
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh


popd

