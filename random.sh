#!/bin/bash

#printing a random word.
echo "Random word generated with this script is : "
rand=/usr/share/dict/words
wordCount=$(cat $rand | wc -l)
wordSelection=$(($Random%$wordCount+1))
word=$(sed -n ''$wordSelection'p' $rand)
echo $word
