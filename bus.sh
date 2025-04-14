#!/bin/bash

# Variables
SOURCE_DIR="/home/$USER/Documents"
BACKUP_DIR="/home/$USER/Backups"
DATE=$(date +"%Y-%m-%d-%H-%M")
FILENAME="backup-$DATE.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create the backup
tar -czf "$BACKUP_DIR/$FILENAME" "$SOURCE_DIR"

# Output result
echo "✅ Backup of $SOURCE_DIR completed at $BACKUP_DIR/$FILENAME"
