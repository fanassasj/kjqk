#!/bin/bash
#
# This script disables the 'send_stats' monitoring feature in kejilion.sh.
# It modifies 'kejilion.sh' in its own directory and the '/usr/local/bin/k' command.

set -e

# Get the absolute path of the directory where this script is located
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

# Define file paths
FILE1="$SCRIPT_DIR/kejilion.sh"
FILE2="/usr/local/bin/k"

# Function to patch a file
disable_monitoring_in_file() {
    local file_path="$1"
    if [ -f "$file_path" ]; then
        if grep -q 'ENABLE_STATS="true"' "$file_path"; then
            sed -i 's/ENABLE_STATS="true"/ENABLE_STATS="false"/' "$file_path"
            echo "Successfully disabled monitoring in: $file_path"
        else
            echo "Monitoring appears to be already disabled in: $file_path"
        fi
    else
        echo "File not found, skipping: $file_path"
    fi
}

echo "Attempting to disable monitoring feature..."
echo "--------------------------------------------------"

disable_monitoring_in_file "$FILE1"
disable_monitoring_in_file "$FILE2"

echo "--------------------------------------------------"
echo "Script execution finished."