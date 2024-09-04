#!/bin/bash
shopt -s dotglob
# Function to recursively remove files containing a specific string in their name
remove_files() {
    local dir="$1"
    local string="$2"
    # Loop through all files and directories in the given directory
    for file in "$dir"/*; do
        if [[ -f "$file" ]]; then
            # Check if the file name contains the specified string
            if [[ "$file" == *"$string"* ]]; then
                echo "Removing file: $file"
                rm "$file"
            fi
        elif [[ -d "$file" ]]; then
            if [[ "$file" == *"venv"* ]]; then
                echo "Skipping folder: $file"
            else
                # Recursively call the function for subdirectories
                remove_files "$file" "$string"
            fi
        fi
    done
}

# Usage: ./clean.sh <directory> <string>
# Example: ./clean.sh /path/to/directory string
directory="$1"
string="$2"

# Check if the directory exists
if [[ -d "$directory" ]]; then
    remove_files "$directory" "$string"
else
    echo "Directory not found: $directory"
fi