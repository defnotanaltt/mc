#!/bin/bash

# Set the interval (in seconds)
interval=180

# Backup command
perform_git_operations() {
    git add . && git commit -m "Backup: $(date +'%d %b %y, %I:%M %p')" && git push
}

# Running loop
while true; do
    # Taking Backup
    perform_git_operations

    # Giving output
    echo ""
    echo "###############################################"
    echo "## Will take backup after $interval seconds. ##"
    echo "###############################################"
    
    sleep $interval
done