#!/bin/bash

ln -si $(pwd)/bin             ~/bin
ln -si $(pwd)/.gitconfig      ~/.gitconfig
ln -si $(pwd)/.vimrc          ~/.vimrc

echo ""                    >> ~/.bashrc 
echo ". ~/bin/bashrc.bash" >> ~/.bashrc 
