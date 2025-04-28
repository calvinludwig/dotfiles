### Zsh Function: dbash

# Executes an interactive bash shell inside a specified Docker container.
# Usage: dbash <container_name_or_id>
dbash() {
  # Check if a container name or ID argument is provided
  if [ -z "$1" ]; then
    echo "Error: No container name or ID specified." >&2
    echo "Usage: dbash <container_name_or_id>" >&2
    return 1
  fi

  local container_id="$1"

  # Execute docker exec command
  # -i: Keep STDIN open even if not attached (interactive)
  # -t: Allocate a pseudo-TTY (terminal)
  command docker exec -it "$container_id" bash

  # Check the exit status of the docker command
  local exit_status=$?
  if [ $exit_status -ne 0 ]; then
    echo "Error: Failed to execute bash in container '$container_id'. Exit status: $exit_status" >&2
    # Common reasons: container not running, bash not installed in container, permission issues.
    return $exit_status
  fi

  return 0
}

# Completion function for the 'dbash' command
_dbash() {
  local -a container_options
  local line id name short_id

  # Fetch running container IDs and Names, separated by a tab
  # Use process substitution <(...) to read line by line safely
  # Redirect stderr to /dev/null to avoid clutter if docker daemon isn't running
  while IFS=$'\t' read -r id name; do
    # Create a short ID (first 12 chars) for cleaner display
    short_id=${id:0:12}
    # Add both the name and the full ID as completion options
    # Format for _describe: "completion_value:description_string"
    container_options+=("$name:Name - $name ($short_id)")
    container_options+=("$id:ID   - $name ($short_id)")
  done < <(command docker ps --format '{{.ID}}\t{{.Names}}' 2>/dev/null)

  # Check if the docker command failed or produced no output
  if (( $? != 0 )) || (( ${#container_options[@]} == 0 )); then
    # Optionally, provide a message if no containers are found or docker fails
    # _message "No running Docker containers found or Docker daemon inactive."
    return 1 # Indicate completion failed or has no options
  fi

  # Use _arguments for standard completion handling
  # '1: :->containers' defines completion for the first argument, transitioning to the 'containers' state
  _arguments \
    '1:Container:( )' \
    '*:: :->args' # Handle potential future arguments if needed

  # If in the state for completing the first argument
  if [[ $state == 'containers' ]]; then
     # Use _describe to offer the generated options with descriptions
    _describe 'container' container_options
  fi

  return 0 # Indicate success
}

# Register the completion function _dbash for the command dbash
compdef _dbash dbash
