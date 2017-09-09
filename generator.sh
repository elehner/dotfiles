#!/bin/bash
# install linux brew
apt-get install build-essential curl file git python-setuptools ruby
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$PATH"
test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
test -r ~/.bash_profile && echo 'export PATH="$(brew --prefix)/bin:$PATH"' >>~/.bash_profile
echo 'export PATH="$(brew --prefix)/bin:$PATH"' >>~/.profile

# turn off analytics
brew analytics off

### neovim
brew install neovim
# install neovim dotfiles
mkdir -p .config/nvim
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/ftplugin ~/.config/nvim/ftplugin
# install Plug
mkdir .config/nvim/autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# install plugins
nvim +PlugInstall +qall

### tmux
brew install tmux
# install tpm
mkdir -p .tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# install tmux dotfiles
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
tmux source ~/.tmux.conf
# install tpm modules
~/.tmux/plugins/tpm/bin/install_plugins
