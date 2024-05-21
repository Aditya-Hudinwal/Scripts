#!/bin/bash

# Function to display RAM information
display_ram_info() {
    echo "RAM Information:"
    free -h
    echo
}

# Function to display disk space information
display_disk_space() {
    echo "Disk Space Information:"
    df -h
    echo
}

# Function to display partition details
display_partitions() {
    echo "Partition Details:"
    lsblk
    echo
}

# Function to display passwd file information
display_passwd_info() {
    echo "Passwd File Information:"
    cat /etc/passwd
    echo
}

# Main function to call other functions
main() {
    display_ram_info
    display_disk_space
    display_partitions
    display_passwd_info
}

# Call the main function
main

