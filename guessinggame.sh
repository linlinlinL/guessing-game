#!/usr/bin/env bash

function ask {
        echo "How many files are in the current directory?"
        read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
        if [[ $guess -lt $files ]]
        then
                echo "It's a little small."
        else
                echo "It's bigger than the real case."
        fi
        ask
done

echo "Congratulations! You've got the right answer."
