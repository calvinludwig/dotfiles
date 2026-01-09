#!/bin/bash

# Check if current directory is a git repository
if ! git rev-parse --is-inside-work-tree &>/dev/null; then
    echo "Not a git repository"
    exit 1
fi

# Get the remote URL (try 'origin' first, then fallback to first remote)
remote_url=$(git remote get-url origin 2>/dev/null || git remote get-url "$(git remote | head -n1)" 2>/dev/null)

if [ -z "$remote_url" ]; then
    echo "No git remote found"
    exit 1
fi

# Convert SSH or HTTPS URL to web URL
if [[ "$remote_url" =~ ^git@github\.com:(.+)$ ]]; then
    # SSH format: git@github.com:user/repo.git
    repo_path="${BASH_REMATCH[1]}"
    repo_path="${repo_path%.git}"  # Remove .git suffix
    web_url="https://github.com/$repo_path"
elif [[ "$remote_url" =~ ^https://github\.com/(.+)$ ]]; then
    # HTTPS format: https://github.com/user/repo.git
    repo_path="${BASH_REMATCH[1]}"
    repo_path="${repo_path%.git}"  # Remove .git suffix
    web_url="https://github.com/$repo_path"
else
    echo "Not a GitHub repository"
    exit 1
fi

# Open URL in default browser
if command -v xdg-open &>/dev/null; then
    xdg-open "$web_url" &>/dev/null
elif command -v open &>/dev/null; then
    open "$web_url"
else
    echo "Cannot find a command to open the browser"
    echo "GitHub URL: $web_url"
    exit 1
fi
