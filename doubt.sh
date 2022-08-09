#!/bin/zsh


PROJECT_DIR="$HOME/Documents/Projects/Aristotle-ATL"

IFS=" "

function AnswerQ() {

clear

figlet -c -t "Doubts" | lolcat

echo "⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯" | lolcat

QUESTION=$(gum write --placeholder "Enter Your Question here... (CRTL-D to Finish)")


gum spin --spinner dot --title "Finding Answer..." -- sleep 9 && echo $(python $PROJECT_DIR/answer.py $QUESTION)


echo "\nDo you Want to Quit?"

gum confirm && exit || AnswerQ 
  }

AnswerQ


