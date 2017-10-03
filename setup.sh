#!/usr/bin/env bash

# Move custom.js file
mkdir -p ~/.jupyter/custom
cp custom.js ~/.jupyter/custom/custom.js

# Create required directory in case (optional)
mkdir -p $(jupyter --data-dir)/nbextensions
# Clone the repository
cd $(jupyter --data-dir)/nbextensions
git clone https://github.com/gregtam/jupyter-vim-binding vim_binding
# Activate the extension
jupyter nbextension enable vim_binding/vim_binding