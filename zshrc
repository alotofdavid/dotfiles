# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/heroku/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/usr/texbin"

#source ~/bin/git-completion.zsh

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

autoload -U compinit
compinit

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# aliases
alias ls='ls -Fh'
alias chrome='open -a "Google Chrome"'

export CLICOLOR=YES
export LSCOLORS='ExgxBxcxCxxxxxxxxxxxxx'


source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. `brew --prefix`/etc/profile.d/z.sh
