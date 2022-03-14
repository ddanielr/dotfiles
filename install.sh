#!/bin/bash
set -e

echo "Running install script"
files=$(find . -type f -name ".*")

for file in $files; do
  file_name=$(grep Name $file | awk {'print $3'})
  echo "Creating a backup of ${HOME}/$file_name"
  touch $HOME/$file_name
  cp $HOME/$file_name $HOME/${file_name}.old
  cp $file $HOME/${file_name}
done
echo "Install completed"
