#!/bin/bash

# User to enter the process name
read -p "Enter the process name: " process_name

# Search for the process ID (PID) of the process
pid=$(pgrep "$process_name")

# Check if the process is running
if [ -z "$pid" ]; then
    echo "The process '$process_name' is not running."
    exit 1
else
    echo "Found the process '$process_name' with PID: $pid"
fi

# Kill the process
kill "$pid"

