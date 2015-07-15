if [ -d ~/.dotfiles ]
then
  echo "\033[0;33mYou already have dotfiles installed at ~/.dotfiles.\033[0m"
  echo "Moving them to ~/.dotfiles.old"
  mv ~/.dotfiles ~/.dotfiles.old
fi

echo "\033[0;34mCloning dotfiles...\033[0m"
hash git >/dev/null && /usr/bin/env git clone git@github.com:yellottyellott/dotfiles.git ~/.dotfiles || {
  echo "git not installed"
  exit
}

# Oh My Zsh
if [ ! -d ~/.oh-my-zsh ]
then
    echo "\033[0;32mInstalling oh-my-zsh...\033[0m"
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi
echo "\033[0;32mInstalling zshrc and theme...\033[0m"
ln -sf ~/.dotfiles/erick.zsh-theme ~/.oh-my-zsh/themes/erick.zsh-theme
ln -sf ~/.dotfiles/zshrc ~/.zshrc

# Git
echo "\033[0;32mInstalling gitconfig and gitignore...\033[0m"
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/gitignore ~/.gitignore

# Vim
echo "\033[0;32mInstalling vimrc and gvimrc...\033[0m"
ln -sf ~/.dotfiles/vimrc ~/.vimrc
ln -sf ~/.dotfiles/gvimrc ~/.gvimrc

# CTags
echo "\033[0;32mInstalling ctags...\033[0m"
ln -sf ~/.dotfiles/ctags ~/.ctags
