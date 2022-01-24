#!/user/bin/env bash

function ask{
        echo "How many files are in the current directory?"
        read input
    file=$(ls -1 | wc -1)
}

ask

while [[ $input -ne $file ]]
do
          if [[ $input -lt $file ]]
          then
                  echo "The input is smaller than the file number."
          else
                  echo "The input is bigger than the file number."
          fi
          ask
done

echo "Congratulations! You have the answer right! "
