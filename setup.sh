#!/bin/bash

# The command to add
ALIAS_LINE="alias 1p=\"hostname -I | awk '{print \$1}'\""

# Add to .bashrc if not already there
if ! grep -q "alias 1p=" ~/.bashrc; then
    echo "$ALIAS_LINE" >> ~/.bashrc
    echo "Success! '1p' command installed."
    echo "Please run 'source ~/.bashrc' or restart your terminal to use it."
else
    echo "'1p' command is already installed."
fi
