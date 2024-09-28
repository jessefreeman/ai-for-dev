---
title: "Creating a Shell Script"
parent: "Prompts"
nav_order: 2
---
# Creating a Shell Script

One of the things LLMs excel at is creating simple, self-contained scripts to help you automate repetitive tasks. For example, I needed a way to rebuild this guide's TOC every time I moved sections or chapters around. I started with ChatGPT but wasn't happy with the results, so I switched to Github Copilot since I was already editing and running the script through Visual Studio code. I use these kinds of shell scripts all the time and they are a pain to build from scratch. I'll walk you through my process so you can see how I break the problems up into smaller tasks the LLM can handle better. The end goal was a script that would do the following:

- Scan all the markdown files in the project.
- Pull out all the chapter names from the folder via Regex.
- Add each of the folder's markdown files to the TOC with links.
- Use each markdown file's title for the TOC.
- Clean up the chapter names by converting from snake case to title case.
- Ignore folders and files that are not part of the guide.

Now let's look at my prompts and how I responded to the LLM to get it to create the final script I used.

## Listing Directory Contents

I started by asking for a basic script to list directory contents recursively:

> "Can you create a script to list the directory contents recursively?"

In response, the LLM provided a basic script that traversed directories and listed markdown files:

```shell
#!/bin/bash

# Function to recursively list directory contents
list_structure() {
  local dir_path="$1"
  local indent="$2"

  for entry in "$dir_path"/*; do
    if [ -d "$entry" ]; then
      if [[ "$(basename "$entry")" =~ ^[0-9]{2}_ ]]; then
        echo "${indent}* $(basename "$entry")"
        list_structure "$entry" "  $indent"
      fi
    elif [ -f "$entry" ] && [[ "$entry" == *.md ]]; then
      if [ "$dir_path" != "." ]; then
        echo "${indent}  * $(basename "$entry")"
      fi
    fi
  done
}

list_structure "." ""
```

## **Extracting Titles from Markdown Files**

Next, I wanted to extract H1 titles from the markdown files:

> "Can you extract the H1 title from each markdown file?"

The LLM added a function to extract the H1 title:

```shell
extract_h1_title() {
  local file_path="$1"
  local h1_title=$(grep -m 1 '^# ' "$file_path" | sed 's/^# //')
  echo "$h1_title"
}
```

The `list_structure` function was then updated to use these titles:

```shell
if [ "$dir_path" != "." ]; then
  local h1_title=$(extract_h1_title "$entry")
  local file_name=$(basename "$entry")
  echo "${indent}  * [$h1_title]($dir_path/$file_name)"
fi
```

## **Clean Up Chapter Names**

I wanted to clean up the chapter names by removing numbers and converting them to title case:

> "Can you clean up the title names? Remove the number and then title case the chapter name."

The LLM provided functions to handle this:

```shell
to_title_case() {
  local input="$1"
  echo "$input" | awk '{for(i=1;i<=NF;i++){$i=toupper(substr($i,1,1)) tolower(substr($i,2))}}1'
}

clean_chapter_name() {
  local chapter_name="$1"
  chapter_name=$(echo "$chapter_name" | sed 's/^[0-9]\{2\}_//')
  chapter_name=$(echo "$chapter_name" | sed 's/_/ /g')
  chapter_name=$(to_title_case "$chapter_name")
  echo "$chapter_name"
}
```

These functions were integrated into the `list_structure` function:

```shell
if [[ "$(basename "$entry")" =~ ^[0-9]{2}_ ]]; then
  local chapter_name=$(clean_chapter_name "$(basename "$entry")")
  echo "${indent}* $chapter_name"
  list_structure "$entry" "  $indent"
fi
```

## **Converting Snake Case to Title Case**

Next, I saw that it wasn't converting the chapter titles correctly. It was still including the underscores and not capitalizing the other words so I asked to convert the snake case of the chapter folder titles to title case:

> "You need to convert the snake case of the chapter folder titles to title case so remove the _ and capitalize things correctly."

The LLM updated the `clean_chapter_name` function handled this:

```shell
clean_chapter_name() {
  local chapter_name="$1"
  chapter_name=$(echo "$chapter_name" | sed 's/^[0-9]\{2\}_//')
  chapter_name=$(echo "$chapter_name" | sed 's/_/ /g')
  chapter_name=$(to_title_case "$chapter_name")
  echo "$chapter_name"
}
```

## **Using Regex to Clean Up Names**

I realized there was a cleaner way to do this, so I asked it to optimize the regex to clean up the names more effectively:

> "Can you use regex to clean up the names more effectively?"

The LLM updated the `clean_chapter_name` function to use regex for more efficient cleaning:

```shell
clean_chapter_name() {
  local chapter_name="$1"
  chapter_name=$(echo "$chapter_name" | sed -E 's/^[0-9]{2}_//; s/_/ /g')
  chapter_name=$(to_title_case "$chapter_name")
  echo "$chapter_name"
}
```

## **Removing Hard-Coded Directory Exclusions**

After seeing I could clean this up more, I asked to remove the hard-coded directories I was asking it to ignore, like .github, images, and any loose markdown files in the root of the directory like the README and SUMMARY files since I was already using regex for the chapter names:

> "Remove the hard-coded directories since we're using regex for the chapter names now."

The LLM updated the `list_structure` function to dynamically handle directories:

```shell
list_structure() {
  local dir_path="$1"
  local indent="$2"

  for entry in "$dir_path"/*; do
    if [ -d "$entry" ]; then
      local chapter_name=$(clean_chapter_name "$(basename "$entry")")
      echo "${indent}* $chapter_name"
      list_structure "$entry" "  $indent"
    elif [ -f "$entry" ] && [[ "$entry" == *.md ]]; then
      local h1_title=$(extract_h1_title "$entry")
      local file_name=$(basename "$entry")
      echo "${indent}  * [$h1_title]($dir_path/$file_name)"
    fi
  done
}
```

## Writing Back To Summary Markdown File

Finally, after testing this a few times and double checking the terminal output was correct I asked to write the TOC back to the summary.md file:

> "Can you add writting these changes back to the SUMMARY.md file in the root of the directory."

The LLM updated the script with the following:

```shell
# Generate the TOC and write it to SUMMARY.md
{
  echo "# Table of contents"
  echo ""
  list_structure "." ""
} > SUMMARY.md
```

## The Final Result

This approach can be adapted for various documentation projects, ensuring that the TOC remains up-to-date and correctly formatted as content evolves. Once everything worked, I asked for one final revision to the code:

> "Can you heavily comment this to explain what is going on in each block of code." 

The final script was then commented and looked like this:

```shell
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
```

This is an example of how I would use an LLM to automate something I could normally write in a few hours in a few minutes. The most important part is always to have the LLM comment on the code. This way, you can understand what is going on under the hood, and to help you if you need to go in and modify it yourself manually. 

You can even go one step further and have it integrate this into your CI system:

> Now, create a GitHub action that will call this shell script when I check my code, and make sure the SUMMARY is correct.md file is always up to date in case I forget to update it manually.

The LLM instructed me to create a file named `.github/workflows/update_summary.yml` in your repository with the following content:

```yaml
name: Update SUMMARY.md

on:
  push:
    branches:
      - main  # Change this to your default branch if it's not 'main'

jobs:
  update-summary:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout repository
      uses: actions/checkout@v2

    - name: Set up Git
      run: |
        git config --global user.name 'github-actions[bot]'
        git config --global user.email 'github-actions[bot]@users.noreply.github.com'

    - name: Run generate_summary.sh
      run: |
        chmod +x generate_summary.sh
        ./generate_summary.sh

    - name: Commit and push changes
      run: |
        git add SUMMARY.md
        git commit -m "Update SUMMARY.md"
        git push
      env:
       

 G

ITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

The response also included an explanation of what this does and how it works:

1. **Trigger on Push:** The workflow is triggered on every push to the `main` branch. You can change this to match your default branch.
2. **Checkout Repository:** Uses the `actions/checkout` action to check out the repository.
3. **Set Up Git:** Configures Git with a username and email for the commit.
4. **Run Shell Script:** Makes the [`generate_summary.sh`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjessefreeman%2FProjects%2FGitBooks%2Fai-for-dev%2Fgenerate_summary.sh%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/Users/jessefreeman/Projects/GitBooks/ai-for-dev/generate_summary.sh") script executable and runs it.
5. **Commit and Push Changes:** Adds the updated [`SUMMARY.md`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjessefreeman%2FProjects%2FGitBooks%2Fai-for-dev%2FSUMMARY.md%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/Users/jessefreeman/Projects/GitBooks/ai-for-dev/SUMMARY.md") file, commits the changes, and pushes them back to the repository. The `GITHUB_TOKEN` is used to authenticate the push.

At this point, I now have a fully automated workflow that ensures every time I push code to my repository, the [`generate_summary.sh`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjessefreeman%2FProjects%2FGitBooks%2Fai-for-dev%2Fgenerate_summary.sh%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/Users/jessefreeman/Projects/GitBooks/ai-for-dev/generate_summary.sh") script is executed, and any changes to the `SUMMARY.md` file are committed and pushed automatically.
