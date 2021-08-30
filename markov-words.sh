#!/bin/sh

# For place holders
PREVWORD1="^"
PREVWORD2="^^"
PREVWORD3="^^^"

# To remove punctuation, convert upper to lower case and only print single letter words with i o and a.
tr -c "a-zA-Z" '\n' | grep '[a-zA-Z]' | grep -o '\([a-zA-Z]\{2,\}\|i\|o\|a\| paste -sd " "\)' | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]' | while read WORD

do
    # Do a little bit of dancing with the words
    echo "$PREVWORD3 $PREVWORD2 $PREVWORD1 $WORD"
    PREVWORD3="$PREVWORD2"
    PREVWORD2="$PREVWORD1"
    PREVWORD1="$WORD"
    
done
