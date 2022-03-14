#!/bin/bash
set -e

echo "Running install script"

# Install dotfiles
files=$(find . -type f -name ".*")

for file in $files; do
  file_name=$(grep Name $file | awk {'print $3'})
  echo "Creating a backup of ${HOME}/$file_name"
  touch $HOME/$file_name
  cp $HOME/$file_name $HOME/${file_name}.old
  cp $file $HOME/${file_name}
done
echo "Install completed"

# Add specific git settings

# Always rebase
git config --global pull.rebase true
# Always clean local from remote
git config --global fetch.prune true
# Always use ssh keys
git config --global url."git@github.com:".insteadOf "https://github.com/"
# Set color blocks
git config --global diff.colorMoved zebra

