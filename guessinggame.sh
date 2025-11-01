#!/bin/bash

# Function to count files in current directory
count_files() {
    ls -1 | wc -l
}

# Main game loop
main() {
    num_files=$(count_files)
    
    echo "How many files are in the current directory?"
    read -p "Enter your guess: " guess
    
    while [[ $guess -ne $num_files ]]; do
        if [[ $guess -lt $num_files ]]; then
            echo "Your guess is too low. Try again."
        else
            echo "Your guess is too high. Try again."
        fi
        read -p "Enter your guess: " guess
    done
    
    echo "Congratulations! You got it right!"
}

main

