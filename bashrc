# essential stuff goes here. fallback for systems 
# without permissions to use/install zsh

if [ -f ~/.aliases ]; then
   source ~/.aliases
fi

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

export CLICOLOR=YES
export LSCOLORS='ExgxBxcxCxxxxxxxxxxxxx'
