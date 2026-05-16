#!/bin/bash

echo "=== Folder Remover ==="
read -p "Enter the name of the folder to delete: " foldername

if [ -z "$foldername" ]; then
    echo "Error: Folder name cannot be empty."
    exit 1
fi

if [ ! -d "$foldername" ]; then
    echo "Error: Folder '$foldername' does not exist."
    exit 1
fi

read -p "Are you sure you want to DELETE '$foldername' and all its contents? (y/N): " confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
    rm -rf "$foldername"
    echo "Success: Folder '$foldername' has been deleted."
else
    echo "Operation cancelled."
fi
