#!/bin/bash

# Remove the alias line from .bashrc
if [ -f ~/.bashrc ]; then
    # This uses 'sed' to delete any line containing "alias 1p="
    sed -i '/alias 1p=/d' ~/.bashrc
    echo "Removed '1p' from .bashrc."
fi

# Remove the alias from the current session immediately
unalias 1p 2>/dev/null

# Refresh the shell
source ~/.bashrc

echo "Success! '1p' command has been uninstalled."
