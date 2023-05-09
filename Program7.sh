#!/bin/bash

# Create a child process
echo "Creating child process..."
sleep 10 &

# Exit the parent process without waiting for the child process to complete
echo "Exiting parent process..."
exit 0

