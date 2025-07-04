#!/bin/bash

# Bing Image of the Day Downloader
# This script downloads Bing's daily image, stores it, and copies it to wallpaper.jpg

# Configuration
WALLPAPER_DIR="$HOME/Pictures/wallpapers"
WALLPAPER_FILE="$HOME/Pictures/wallpapers/wallpaper.jpg"

# Create wallpaper directory if it doesn't exist
mkdir -p "$WALLPAPER_DIR"

# Function to download Bing image
download_bing_image() {
  # Get Bing image metadata (JSON format)
  local bing_url="https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US"
  local json_response

  # Download JSON metadata
  json_response=$(curl -s "$bing_url")

  if [ $? -ne 0 ] || [ -z "$json_response" ]; then
    echo "ERROR: Failed to fetch Bing image metadata"
    return 1
  fi

  # Extract image URL and date
  local image_url=$(echo "$json_response" | grep -o '"url":"[^"]*"' | head -1 | sed 's/"url":"//;s/"//')
  local start_date=$(echo "$json_response" | grep -o '"startdate":"[^"]*"' | head -1 | sed 's/"startdate":"//;s/"//')

  if [ -z "$image_url" ]; then
    echo "ERROR: Could not extract image URL from Bing response"
    return 1
  fi

  # Complete the URL (Bing returns relative URLs)
  if [[ "$image_url" == /* ]]; then
    image_url="https://www.bing.com$image_url"
  fi

  # Generate filename with date
  local filename="${start_date}.jpg"
  local full_path="$WALLPAPER_DIR/$filename"

  # Check if image already exists
  if [ -f "$full_path" ]; then
    echo "Image already exists, copying to wallpaper.jpg"
    cp "$full_path" "$WALLPAPER_FILE"
    return 0
  fi

  # Download the image
  if curl -L -o "$full_path" "$image_url"; then
    echo "Successfully downloaded: $filename"

    # Copy to wallpaper.jpg
    cp "$full_path" "$WALLPAPER_FILE"
    echo "Copied to wallpaper.jpg"

    return 0
  else
    echo "ERROR: Failed to download image"
    return 1
  fi
}

# Main execution
main() {
  # Download the image
  if download_bing_image; then
    echo "SUCCESS: Wallpaper updated successfully"
  else
    echo "FAILED: Could not update wallpaper"
    exit 1
  fi
}

# Run the script
main "$@"
