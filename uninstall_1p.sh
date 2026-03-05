#!/bin/bash

# 1. Remove from the file so it doesn't come back on reboot
if [ -f ~/.bashrc ]; then
    sed -i '/alias 1p=/d' ~/.bashrc
fi

if [ -f ~/.zshrc ]; then
    sed -i '/alias 1p=/d' ~/.zshrc
fi

# 2. Kill it from the active memory
# Note: This only works if the user runs the script with 'source'
unalias 1p 2>/dev/null

echo "Removed '1p' from config files."
echo "Success! If '1p' still works, type: unalias 1p"
