#!/bin/sh

#cat ./aristotle-ascii-art | lolcat
#cat ./text | lolcat

PROJECT_DIR="$HOME/Documents/Projects/Aristotle-ATL"

echo "⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯" | lolcat

kitty +kitten icat --align center "$PROJECT_DIR/Aristotle_3.png" 


#echo "Welcome to Aristotle, Your personal study buddy!" 
#echo "What would you like to do today?"

gum style --foreground "" --border-foreground "#387CA3" --border double --align center --width 50 --margin "2 75" --padding "2 4"  'Welcome to Aristotle, Your Digital Study Buddy! What would you like to do today?' | lolcat
 

OPTION=$(gum choose --limit 2 "Ask Doubt" "Evaluate Myself" "Check my study routine" "Exit")

echo $OPTION | lolcat

if [ "$OPTION" == "Ask Doubt" ]; then
  alacritty --config-file ~/.config/alacritty/alacritty_custom_width.yml --class 'Doubt' -e "$PROJECT_DIR/doubt.sh" > /dev/null 2>&1
fi

