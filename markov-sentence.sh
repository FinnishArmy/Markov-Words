# !/bin/bash

# This uses the C program to shuffle instead of using the built in shuf command to increase support for the script
SHUF=`command -v shuf`
if [ ! -x "$SHUF" ]; then
    if [ -x "./shuffle" ]; then
        SHUF="./shuffle"
    else
        echo "No shuffle program!" 1>& 2
        exit -1
    fi
fi

# Check if the file exists and is readable
if [[ ! -f $1 || ! -r $1 ]]
then
    # If not, then tell them it's not real
    echo "404 File not found: $1"
    exit 0
fi

# If it does exist, then check if the number provided is more than 0
if [[ $2 -gt 0 ]]
    then
    # Counter for the looping
    loop=0
    # Loop through until the number provided
    for ((i=0;i<$2;i++))
        do
            # Get a random line from a file
            LINE=`$SHUF < $1 | awk '{ print $2" "$3" "$4 }' | head -n 1`
            # Get a random line beginning with the above LINE
            NEWLINE=`grep "^$LINE" $1 | $SHUF | awk '{ print $4 }' | head -n 1`
            # Print the new line removing newLine character
            echo -n "$NEWLINE "
        done
        # Print a new line once done
        printf "\n"
        
# If not greater than 0, tell the user
else
    echo "$2 Must be great than 0"
    exit 0
fi




