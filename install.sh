# setup zsh configurations
cp ~/.zshrc ~/.zshrc_backup
rm ~/.zshrc
ln -s zsh/.zshrc ~/.zshrc

# setup tmux configurations
cp ~/.tmux.conf ~/.tmux.conf.backup
cp ~/.tmux.conf.local ~/.tmux.conf.local.backup
rm ~/.tmux.conf

ln -s -f tmux/.tmux.conf ~/.tmux.conf
ln -s -f tmux/.tmux.conf.local ~/.tmux.conf.local
