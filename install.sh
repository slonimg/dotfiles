# setup zsh configurations
pushd ~
cp .zshrc .zshrc_backup
rm .zshrc
popd

ln -s zsh/.zshrc ~/.zshrc

# setup tmux configurations
pushd ~
cp .tmux.conf .tmux.conf.backup
cp .tmux.conf.local .tmux.conf.local.backup
rm .tmux.conf .tmux.conf.local
popd

ln -s -f tmux/.tmux.conf ~/.tmux.conf
ln -s -f tmux/.tmux.conf.local ~/.tmux.conf.local

#setup vim configuration
pushd ~
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
popd

