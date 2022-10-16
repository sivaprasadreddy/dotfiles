#!/usr/bin/env bash

set -e
set -o pipefail

homedir="${HOME}"

# dotfiles directory
dotfiledir=${homedir}/dotfiles

./brew_once.sh

# list of files/folders to symlink in ${homedir}
files=".gitconfig .zshrc siva_profile.sh aliases.sh functions.sh"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    #ln -sf ${dotfiledir}/${file} ${homedir}/${file}
done

brew bundle
