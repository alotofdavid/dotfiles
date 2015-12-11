# zsh specific config
# non-zsh stuff should go in bashrc

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

plugins=( zsh-syntax-highlighting )

autoload -U compinit
compinit

. `brew --prefix`/etc/profile.d/z.sh

#mactex caveat for zsh users
eval `/usr/libexec/path_helper -s`

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

