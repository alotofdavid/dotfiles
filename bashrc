export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/usr/texbin
export PYTHONPATH=/Users/davidadams/Documents/Code/python/rubik:$PYTHONPATH 

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$PATH:$HOME/bin"

# Add GHC 7.10.2 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.2.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# aliases
alias very='git'
alias much='git'
alias ll='ls -al'

alias ssh61c='ssh cs61c@torus.cs.berkeley.edu'
alias sshgsi='ssh cs61c-taf@torus.cs.berkeley.edu'
alias sshocf='ssh dadams@ssh.ocf.berkeley.edu'
alias ssh186='ssh cs186-hk@torus.cs.berkeley.edu'

alias vbox186='cd ~/Documents/Berkeley/Senior/CS186/186-vbox/ && vagrant up && vagrant ssh'

alias mars='java -jar mars4_4.jar'

