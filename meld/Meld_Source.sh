#!/bin/bash
quoted=$(echo "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" | sed -e "s/\n/ /g")

echo "$quoted" > $HOME/.meld/nautilus
