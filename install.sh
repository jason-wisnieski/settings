#!/bin/bash

ln -si $(pwd)/bin             ~/bin
ln -si $(pwd)/.gitconfig      ~/.gitconfig
ln -si $(pwd)/.vimrc          ~/.vimrc
ln -si $(pwd)/.config/fish/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

echo ""                    >> ~/.bashrc
echo ". ~/bin/bashrc.bash" >> ~/.bashrc
