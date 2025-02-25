#!/bin/bash
# This script adds a .gitkeep file to the current directory and all its subdirectories

find . -type d -exec touch {}/.gitkeep \;

echo ".gitkeep files added to all directories and subdirectories."