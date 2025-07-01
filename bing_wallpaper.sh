#!/bin/bash

# Enhanced Bing Picture of the Day Downloader
# Author: Your Name
# Description: Downloads Bing's daily wallpaper with comprehensive error handling

set -euo pipefail # Exit on error, undefined vars, pipe failures

# Configuration
WALLPAPER_DIR="${HOME}/Pictures/wallpapers"
BING_API="https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US"
LOG_FILE="/tmp/bing_wallpaper_download.log"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Logging function
log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG_FILE"
}

# Error handling function
error_exit() {
  echo -e "${RED}Error: $1${NC}" >&2
  log "ERROR: $1"
  exit 1
}

# Success message function
success_msg() {
  echo -e "${GREEN}$1${NC}"
  log "SUCCESS: $1"
}

# Warning message function
warning_msg() {
  echo -e "${YELLOW}Warning: $1${NC}"
  log "WARNING: $1"
}

# Check dependencies
check_dependencies() {
  local deps=("curl" "grep")
  for dep in "${deps[@]}"; do
    if ! command -v "$dep" &>/dev/null; then
      error_exit "$dep is required but not installed"
    fi
  done
}

# Create necessary directories
setup_directories() {
  if ! mkdir -p "$WALLPAPER_DIR"; then
    error_exit "Could not create directory: $WALLPAPER_DIR"
  fi
}

# Get image URL from Bing API
get_image_url() {
  local api_response
  api_response=$(curl -s --max-time 30 "$BING_API") || error_exit "Failed to fetch data from Bing API"

  local image_url
  image_url=$(echo "$api_response" | grep -Po '"url":"\K[^"]*' | head -1)

  if [[ -z "$image_url" ]]; then
    error_exit "Could not extract image URL from API response"
  fi

  echo "https://www.bing.com$image_url"
}

# Extract filename from URL
get_filename_from_url() {
  local url="$1"
  local filename

  # Extract filename from URL (everything after the last /)
  filename=$(basename "$url" | cut -d'?' -f1)

  # If no extension or invalid filename, use a default
  if [[ ! "$filename" =~ \.(jpg|jpeg|png|webp)$ ]]; then
    filename="bing_wallpaper_$(date +%Y%m%d).jpg"
  fi

  echo "$filename"
}

# Download the wallpaper
download_wallpaper() {
  local url="$1"
  local filename
  filename=$(get_filename_from_url "$url")

  local wallpaper_file="${WALLPAPER_DIR}/${filename}"
  local temp_file="${wallpaper_file}.tmp"

  log "Downloading from: $url"
  log "Saving as: $filename"

  if curl -s --max-time 60 -o "$temp_file" "$url"; then
    # Verify the download
    if [[ -f "$temp_file" ]] && [[ -s "$temp_file" ]]; then
      # Check if it's actually an image (basic check)
      if file "$temp_file" | grep -q "image\|JPEG\|PNG"; then
        cp "$temp_file" "$wallpaper_file"
        rm -f "$temp_file"
        success_msg "Wallpaper downloaded successfully: $wallpaper_file"
        echo "$wallpaper_file" # Return the final file path
      else
        rm -f "$temp_file"
        error_exit "Downloaded file is not a valid image"
      fi
    else
      rm -f "$temp_file"
      error_exit "Download failed or file is empty"
    fi
  else
    rm -f "$temp_file"
    error_exit "Failed to download wallpaper"
  fi
}

# Display image information
show_image_info() {
  local wallpaper_file="$1"

  if command -v identify &>/dev/null; then
    echo -e "\n${GREEN}Image Information:${NC}"
    identify "$wallpaper_file"
  fi

  echo -e "\n${GREEN}File Information:${NC}"
  ls -lh "$wallpaper_file"
}

# Main function
main() {
  log "Starting Bing wallpaper download"

  check_dependencies
  setup_directories

  local image_url
  image_url=$(get_image_url)

  local downloaded_file
  downloaded_file=$(download_wallpaper "$image_url")

  show_image_info "$downloaded_file"

  log "Wallpaper download completed successfully"
}

# Run the script
main "$@"
