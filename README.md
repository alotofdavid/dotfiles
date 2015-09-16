# dba's dotfiles

Woo

### setup instructions
      git clone git@github.com:alotofdavid/dotfiles.git
      cd dotfiles
      git submodule init
      git submodule update
      ./install
      
To install the Vim plugins, open Vim and run:

      :VundleInstall
   
If you have any dotfiles already in your home folder, the install will fail to symlink. Merge your existing configuration settings with the dotfiles in this repo before installing. 
