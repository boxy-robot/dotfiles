ZSH=$HOME/.oh-my-zsh
DOTFILES=$HOME/.dotfiles
WORKON_HOME=~/.virtualenvs

alias zshconfig="vim ~/.zshrc"
alias code="cd ~/Code"
alias l="ls -lah"
alias nuke="find . -name \*.orig -delete -o -name \*.pyc -delete"
alias serve="python -m SimpleHTTPServer"
alias resource="source ~/.zshrc"

alias au="find . -name "
alias ag="noglob ag"
alias git="noglob git"

alias setproject="setvirtualenvproject $VIRTUAL_ENV $(pwd)"
alias py3=python3
alias py=ipython
alias startproject='django-admin.py startproject --template=https://github.com/yellottyellott/django-template/zipball/master --extension=py,rst,md'

alias fab="nocorrect fab"
alias todo="mate ~/Google\ Drive/TODO.md"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git fabric)

ZSH_THEME="erick"

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/share/npm/bin:/usr/local/sbin:$PATH
export PGDATA=/usr/local/var/postgres
export BUZZFEED_ROOT="~/Code"

bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

cd .
