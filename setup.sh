#!/bin/bash

# The command to add
ALIAS_LINE="alias 1p=\"hostname -I | awk '{print \$1}'\""

# Add to .bashrc if not already there
if ! grep -q "alias 1p=" ~/.bashrc; then
    echo "$ALIAS_LINE" >> ~/.bashrc
    echo "Success! '1p' command installed."
    # This line below will now execute within the current session 
    # IF the user runs the script using 'source'
    source ~/.bashrc
    echo "The '1p' command is now active and ready to use!"
else
    echo "'1p' command is already installed."
fi
