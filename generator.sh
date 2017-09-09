# install linux brew
sudo apt-get install build-essential curl file git python-setuptools ruby
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$PATH"
test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
test -r ~/.bash_profile && echo 'export PATH="$(brew --prefix)/bin:$PATH"' >>~/.bash_profile
echo 'export PATH="$(brew --prefix)/bin:$PATH"' >>~/.profile

# install tmux and neovim
brew install neovim
brew install tmux

# install dotfiles
# Maybe when I make sure it doesn't need to be private >.>
