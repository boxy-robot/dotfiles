ZSH=$HOME/.oh-my-zsh
DOTFILES=$HOME/.dotfiles
WORKON_HOME=~/.virtualenvs

alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias code="cd ~/Code"
alias l="ls -lah"
alias nuke="find . -name \*.orig -delete -o -name \*.pyc -delete"
alias serve="python -m SimpleHTTPServer"
alias cl="clear"
alias resource="source ~/.zshrc"

alias pull="git pull"
alias push="git push"
alias commit="git commit -am "
alias au="find . -name "
alias ag="noglob ag"
alias git="noglob git"

alias setproject="setvirtualenvproject $VIRTUAL_ENV $(pwd)"
alias rake='noglob rake'
alias svn='noglob svn'
alias py3=python3
alias py=ipython
alias startproject='django-admin.py startproject --template=https://github.com/yellottyellott/django-template/zipball/master --extension=py,rst,md'

alias fab="nocorrect fab"
alias todo="mate ~/TODO.md"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git fabric virtualenvwrapper django)

ZSH_THEME="erick"

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/share/npm/bin:/usr/local/sbin:$PATH

export PGDATA=/usr/local/var/postgres


bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

cd .
