#!/bin/bash

# Function to extract the H1 title from a markdown file
# Arguments:
#   $1 - The path to the markdown file
# Returns:
#   The first H1 title found in the file
extract_h1_title() {
  local file_path="$1"
  # Use grep to find the first line that starts with '# ' and remove the '# ' prefix
  local h1_title=$(grep -m 1 '^# ' "$file_path" | sed 's/^# //')
  echo "$h1_title"
}

# Function to convert a string to title case
# Arguments:
#   $1 - The input string
# Returns:
#   The input string converted to title case
to_title_case() {
  local input="$1"
  # Use awk to capitalize the first letter of each word and make the rest lowercase
  echo "$input" | awk '{for(i=1;i<=NF;i++){$i=toupper(substr($i,1,1)) tolower(substr($i,2))}}1'
}

# Function to clean up chapter names
# Arguments:
#   $1 - The chapter name string
# Returns:
#   The cleaned-up chapter name
clean_chapter_name() {
  local chapter_name="$1"
  # Remove the leading number and underscore (e.g., '01_Chapter' becomes 'Chapter')
  chapter_name=$(echo "$chapter_name" | sed 's/^[0-9]\{2\}_//')
  # Replace underscores with spaces (e.g., 'Chapter_Name' becomes 'Chapter Name')
  chapter_name=$(echo "$chapter_name" | sed 's/_/ /g')
  # Convert the chapter name to title case
  chapter_name=$(to_title_case "$chapter_name")
  echo "$chapter_name"
}

# Function to recursively list directory contents and print the Table of Contents (TOC)
# Arguments:
#   $1 - The path to the directory to list
#   $2 - The current indentation level for the TOC
list_structure() {
  local dir_path="$1"
  local indent="$2"

  # Iterate over all entries in the current directory
  for entry in "$dir_path"/*; do
    if [ -d "$entry" ]; then
      # Only include directories that match the '00_' pattern
      if [[ "$(basename "$entry")" =~ ^[0-9]{2}_ ]]; then
        # Clean up the chapter name
        local chapter_name=$(clean_chapter_name "$(basename "$entry")")
        # Print the chapter name with the current indentation
        echo "${indent}* $chapter_name"
        # Recursively list the contents of the directory with increased indentation
        list_structure "$entry" "  $indent"
      fi
    elif [ -f "$entry" ] && [[ "$entry" == *.md ]]; then
      # Ignore markdown files in the root directory
      if [ "$dir_path" != "." ]; then
        # Extract the H1 title from the markdown file
        local h1_title=$(extract_h1_title "$entry")
        local file_name=$(basename "$entry")
        # Print the H1 title and file path with the current indentation
        echo "${indent}  * [$h1_title]($dir_path/$file_name)"
      fi
    fi
  done
}

# Generate the Table of Contents and write it to SUMMARY.md
{
  # Print the header for the TOC
  echo "# Table of contents"
  echo ""
  # List the structure of the current directory and its subdirectories
  list_structure "." ""
} > SUMMARY.md