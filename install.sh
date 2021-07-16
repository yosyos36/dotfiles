#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

read -p "Did you signin to App Store? (y/N): " yn
case "$yn" in
    [yY]*) echo "good."
    *) exit 1;;
esac

# # brew
# if !(command brew -v > /dev/null 2>&1); then
#     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# fi
#
# cd $SCRIPT_DIR
# brew bundle --file $SCRIPT_DIR/Brewfile
#
# # zsh
# ln -s ~/.zprofile $SCRIPT_DIR/.zprofile
#
# # fish
# mkdir ~/.config
# ln -s ~/.config/fish $SCRIPT_DIR/fish
#
# # Keybind
# mkdir -p ~/Library/KeyBindings
# ln -s ~/Library/KeyBindings/DefaultKeyBinding.dict $SCRIPT_DIR/DefaultKeyBinding.dict
#
# # scripts
# ln -s ~/.scripts $SCRIPT_DIR/.scripts
#
# # Emacs
# mkdir -p ~/.emacs.d
# ln -s ~/.emacs.d $SCRIPT_DIR/.emacs.d