#!/bin/bash
#
# This script disables the 'send_stats' monitoring feature in the kejilion scripts.
# It works by changing ENABLE_STATS="true" to ENABLE_STATS="false".

set -e

# Paths where the kejilion script and its copies might be located
FILE1="/home/ubuntu/kj/kejilion.sh"
FILE2="/home/ubuntu/kejilion.sh"
FILE3="/usr/local/bin/k"

# Function to patch a file
disable_monitoring_in_file() {
    local file_path="$1"
    if [ -f "$file_path" ]; then
        # Check if monitoring is enabled before trying to disable it
        if grep -q 'ENABLE_STATS="true"' "$file_path"; then
            # Use sed to replace the line. The -i flag modifies the file in-place.
            sed -i 's/ENABLE_STATS="true"/ENABLE_STATS="false"/' "$file_path"
            echo "Successfully disabled monitoring in: $file_path"
        else
            echo "Monitoring appears to be already disabled in: $file_path"
        fi
    else
        echo "File not found, skipping: $file_path"
    fi
}

echo "Attempting to disable monitoring feature in kejilion scripts..."
echo "--------------------------------------------------"

disable_monitoring_in_file "$FILE1"
disable_monitoring_in_file "$FILE2"
disable_monitoring_in_file "$FILE3"

echo "--------------------------------------------------"
echo "Script execution finished."
echo "The monitoring feature should now be disabled."
