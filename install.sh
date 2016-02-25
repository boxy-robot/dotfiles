set -e

# Homebrew
if [ ! -e /usr/local/bin/brew ]
then
    echo "\033[0;34mInstalling homebrew stuff...\033[0m"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/bundle &> /dev/null  # https://github.com/Homebrew/homebrew-bundle
brew bundle

# Dotfiles
if [ ! -d ~/.dotfiles ]
then
    echo "\033[0;34mCloning dotfiles...\033[0m"
    git clone git@github.com:yellottyellott/dotfiles.git ~/.dotfiles
fi

# Oh My Zsh
echo "\033[0;32mInstalling zshrc stuff...\033[0m"
if [ ! -d ~/.oh-my-zsh ]
then
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi

ln -sf ~/.dotfiles/erick.zsh-theme ~/.oh-my-zsh/themes/erick.zsh-theme
ln -sf ~/.dotfiles/zshrc ~/.zshrc

# Git
echo "\033[0;32mInstalling git stuff...\033[0m"
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/gitignore ~/.gitignore

# Vim
echo "\033[0;32mInstalling vim stuff...\033[0m"
if [ ! -d ~/.vim/bundle/Vundle.vim ]
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
ln -sf ~/.dotfiles/vimrc ~/.vimrc
ln -sf ~/.dotfiles/gvimrc ~/.gvimrc

# CTags
echo "\033[0;32mInstalling ctags config...\033[0m"
ln -sf ~/.dotfiles/ctags ~/.ctags

# Editorconfig
echo "\033[0;32mInstalling editorconfig...\033[0m"
ln -sf ~/.dotfiles/editorconfig ~/.editorconfig

# AWS
mkdir -p ~/.aws
ln -sf ~/.dotfiles/awsconfig ~/.aws/config
if [ ! -e ~/.aws/credentials ]
then
    aws configure
fi

# Python
pip install -r ~/.dotfiles/packages.pip

# Bin
ln -sf ~/.dotfiles/bin/proxy /usr/local/bin/proxy
