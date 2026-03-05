#!/bin/bash

# 1. Remove from the file (Permanent)
if [ -f ~/.bashrc ]; then
    sed -i '/alias 1p=/d' ~/.bashrc
fi

# 2. Kill it from memory (Instant)
unalias 1p 2>/dev/null

echo "Removed '1p' from .bashrc."
echo "Success! '1p' command has been uninstalled."
