#!/bin/bash
arg1=$(cat $HOME/.meld/nautilus)
arg2=$(echo "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" | sed -e "s/\n/ /g")

if [ "$(arg1)" -eq "0" ];then
zenity --info --text "No files Selected!"
exit 1
fi
meld $arg1 $arg2
