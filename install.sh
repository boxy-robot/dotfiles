#!/bin/zsh

set -e

CODE_DIR="$HOME/code"
DOTFILES_DIR="$CODE_DIR/dotfiles"
mkdir -p "$CODE_DIR"

if [ ! -e /usr/local/bin/brew ]
then
    echo "installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [ ! -d "$DOTFILES_DIR" ]
then
    echo "cloning dotfiles..."
    git clone git@github.com:yellottyellott/dotfiles.git "$DOTFILES_DIR"
fi

cd $DOTFILES_DIR 
brew bundle

echo "installing configs..."
ln -sf "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES_DIR/gitignore" "$HOME/.gitignore"

echo "installing prezto..."
if [ ! -d "$CODE_DIR/prezto" ]
then
    git clone --recursive git@github.com:yellottyellott/prezto.git "$CODE_DIR/prezto"
    setopt EXTENDED_GLOB
    for rcfile in "$CODE_DIR"/prezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "$HOME/.${rcfile:t}"
    done
fi
ln -sf "$CODE_DIR/prezto" "$HOME/.zprezto"