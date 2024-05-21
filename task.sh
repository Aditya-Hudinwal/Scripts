#!/bin/bash

# Define the process name to search for
process_name="sleep"

# Get the PID of the process
pid=$(ps aux | grep "$process_name" | grep -v grep | awk '{print $2}')

# Check if PID is empty
if [ -z "$pid" ]; then
    echo "Process '$process_name' is not running."
    exit 1
else
    echo "Process '$process_name' found with PID: $pid"
fi

# Kill the process
kill "$pid"

