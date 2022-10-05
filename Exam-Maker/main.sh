#!/bin/sh

PROJECT_DIR="$HOME/Documents/Projects/Aristotle-ATL"

PATH=/home/ox_admin/.local/bin/geckodriver:$PATH

bspc node -t floating

figlet -c "                Test Yourself!" | lolcat

echo "⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯" | lolcat

echo "                                Pick a Subject to Evaluate Yourself On.." | lolcat

OPTION=$(gum choose --limit 2 "Physics" "Geography" "Maths" "Cancel")

echo $OPTION | lolcat

gum spin --spinner dot --title "Fetching ${OPTION} Questions..." -- sleep 9 && python $PROJECT_DIR/Exam-Maker/get-questions.py

sleep 3000

