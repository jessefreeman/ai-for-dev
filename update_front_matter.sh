#!/bin/bash

# Function to extract the H1 title from a markdown file
extract_h1_title() {
  local file_path="$1"
  local h1_title=$(grep -m 1 '^# ' "$file_path" | sed 's/^# //')
  echo "$h1_title"
}

# Function to convert a string to title case
to_title_case() {
  local input="$1"
  echo "$input" | awk '{for(i=1;i<=NF;i++){$i=toupper(substr($i,1,1)) tolower(substr($i,2))}}1'
}

# Function to clean up chapter names
clean_chapter_name() {
  local chapter_name="$1"
  chapter_name=$(echo "$chapter_name" | sed 's/^[0-9]\{2\}_[0-9]\{2\}_//')  # Remove leading chapter number
  chapter_name=$(echo "$chapter_name" | sed 's/_/ /g')                       # Replace underscores with spaces
  chapter_name=$(to_title_case "$chapter_name")                              # Convert to title case
  echo "$chapter_name"
}

# Function to create a 00 file if it doesn't exist
create_00_file_if_missing() {
  local dir_path="$1"
  local chapter_order="$2"

  local chapter_name=$(basename "$dir_path")
  local clean_name=$(clean_chapter_name "$chapter_name")
  local new_file_path="$dir_path/$(echo "$chapter_name" | sed 's/^\([0-9]\{2\}\)_/\1_00_/')_introduction.md"

  echo "Checking for 00 file in $dir_path..."

  # Only create a 00 file if it doesn't exist
  if [ ! -f "$new_file_path" ]; then
    echo "Creating missing 00 file: $new_file_path"
    {
      echo "---"
      echo "title: \"$clean_name\""
      echo "has_children: true"
      echo "nav_order: $chapter_order"
      echo "---"
      echo ""
      echo "# $clean_name"
      echo "This is the introduction to the chapter."
    } > "$new_file_path"
  else
    echo "00 file already exists: $new_file_path"
  fi
}

# Function to update front matter for markdown files without overwriting tables or content
update_front_matter() {
  local file_path="$1"
  local order="$2"
  local title="$3"
  local parent="$4"

  echo "Updating front matter for $file_path"
  echo "Order: $order, Title: $title, Parent: $parent"

  # Extract the existing content except front matter
  local content=$(awk 'BEGIN {in_front_matter=0} {if ($0 == "---" && !in_front_matter) {in_front_matter=1; next} else if ($0 == "---" && in_front_matter) {in_front_matter=0; next} if (!in_front_matter) print}' "$file_path")

  # If no parent, it's a 00 file (has_children true); otherwise, add parent.
  if [[ -z "$parent" ]]; then
    {
      echo "---"
      echo "title: \"$title\""
      echo "has_children: true"
      echo "nav_order: $order"
      echo "---"
      echo "$content"
    } > "$file_path"
  else
    {
      echo "---"
      echo "title: \"$title\""
      echo "parent: \"$parent\""
      echo "nav_order: $order"
      echo "---"
      echo "$content"
    } > "$file_path"
  fi
}

# Function to process markdown files and update front matter
process_markdown_files() {
  local dir_path="$1"
  local chapter_order="$2"
  local order=1
  local parent_title=""
  local in_chapter=false

  echo "Processing markdown files in $dir_path..."

  # Ensure we are processing a chapter directory (look for 00 files or create one)
  create_00_file_if_missing "$dir_path" "$chapter_order"

  # Find the parent (00) file and set its title as the parent for the other files
  for file_path in "$dir_path"/*.md; do
    local file_name=$(basename "$file_path")
    local first_5_chars=$(echo "$file_name" | cut -c1-5)

    if [[ "$first_5_chars" =~ 00 ]]; then
      echo "Found parent file: $file_name"
      parent_title=$(extract_h1_title "$file_path")
      if [[ -z "$parent_title" ]]; then
        parent_title=$(clean_chapter_name "$file_name")
      fi
      update_front_matter "$file_path" "$chapter_order" "$parent_title" ""
      in_chapter=true
      break  # Only one parent file, so we can stop looking for others.
    fi
  done

  # Process the rest of the files as child files
  if [[ "$in_chapter" = true ]]; then
    # Sort files based on their first 5 characters (##_##) and process the children
    for file_path in $(ls "$dir_path"/*.md | grep -v "00_" | sort); do
      local file_name=$(basename "$file_path")
      local h1_title=$(extract_h1_title "$file_path")

      if [[ -z "$h1_title" ]]; then
        h1_title=$(clean_chapter_name "$file_name")
      fi

      # Ensure the child files get the correct parent (from the 00 file)
      update_front_matter "$file_path" "$order" "$h1_title" "$parent_title"
      echo "Updated front matter for $file_name with parent $parent_title"
      ((order++))
    done
  else
    echo "No parent file found in $dir_path"
  fi
}

# Function to recursively list directory contents and update markdown files
list_structure() {
  local dir_path="$1"
  local chapter_order=1

  echo "Listing directory structure for $dir_path..."

  for entry in "$dir_path"/*; do
    if [ -d "$entry" ]; then
      if [[ "$(basename "$entry")" =~ ^[0-9]{2}_ ]]; then
        echo "Processing folder: $(basename "$entry")"
        process_markdown_files "$entry" "$chapter_order"
        ((chapter_order++))
      else
        echo "Skipping non-chapter folder: $(basename "$entry")"
      fi
    fi
  done
}

# Main function to start processing
main() {
  echo "Starting structure processing..."
  list_structure "."
  echo "Structure processing complete."
}

# Run the script
main
