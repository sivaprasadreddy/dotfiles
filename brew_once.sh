#!/bin/zsh

if [[ $(command -v brew) == "" ]]; then
    echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Updating Homebrew"
    brew update
fi

## oh-my-zsh
if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is already installed"
 else
 	echo "oh-my-zsh is not installed...Installing now..."
 	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


