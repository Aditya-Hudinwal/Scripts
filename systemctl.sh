#!/bin/bash

# Function to start a service
start_service() {
    sudo systemctl start "$1"
}

# Function to stop a service
stop_service() {
    sudo systemctl stop "$1"
}

# Main script logic
clear
echo "1. Start a service"
echo "2. Stop a service"
read -p "Enter your choice (1/2): " choice

case $choice in
    1)
        read -p "Enter the name of the service to start: " service_name
        start_service "$service_name"
        ;;
    2)
        read -p "Enter the name of the service to stop: " service_name
        stop_service "$service_name"
        ;;
    *)
        echo "Invalid choice! Please enter 1 or 2."
        ;;
esac


