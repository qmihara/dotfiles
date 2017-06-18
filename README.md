# dotfiles

    $ git clone git@github.com:qmihara/dotfiles.git ~/.dotfiles
    $ ln -sfv ~/.dotfiles/Brewfile ~/Brewfile
    $ ln -sfv ~/.dotfiles/.zshrc ~/.zshrc
    $ ln -sfv ~/.dotfiles/.atom ~/.atom

## homebrew インストール

    $ ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
    $ brew doctor

## shell

    $ sudo vi /etc/shells
    $ chsh -s /usr/local/bin/zsh
    Password for xxxx:

## atom

    $ cd .atom
    $ make install_packages

