# dotfiles
* Checkout repo to a folder in home dir (~/.dotfiles)
   ```
   .dotfiles/
    ├── bash
    │   ├── dot-bash_aliases
    │   ├── dot-bash_profile
    │   └── dot-bashrc
    ├── git
    │   ├── dot-gitconfig
    │   └── dot-git-prompt.sh
    └── vim
        └── dot-vimrc
    ```

* To install (symlink from .dotfiles/subdir to home) run GNU stow
   ```
   cd ~/.dotfiles
   stow --dotfiles bash
   ```
   
* Result
  ```
  ls -l ~/.bash*
  .bash_aliases -> .dotfiles/bash/dot-bash_aliases
  .bash_profile -> .dotfiles/bash/dot-bash_profile
  .bashrc -> .dotfiles/bash/dot-bashrc
  ```
