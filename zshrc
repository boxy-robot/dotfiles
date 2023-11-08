#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias code="cd ~/Code"
alias vs="/usr/local/bin/code"
alias py=ipython
alias todo="open /Applications/Obsidian.app"
alias dc="docker compose"
alias python="python3"
alias pip="pip3"
alias git="noglob git"
alias nuke="find . | grep -E \"(/__pycache__$|\.pyc$|\.pyo$|\.coverage$|coverage.xml)\" | xargs rm -rf"

export VISUAL=vim
export EDITOR="$VISUAL"
export PYTHONDONTWRITEBYTECODE=1
