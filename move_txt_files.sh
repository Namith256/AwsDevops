#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <file_extension>"
    exit 1
fi

SOURCE_DIR="$1"
EXTENSION="$2"
BACKUP_DIR="/e/AwsDevops/projects/Github/backup"

mkdir -p "$BACKUP_DIR"

echo "Before moving:"
find "$SOURCE_DIR" -type f -name "*.$EXTENSION"

find "$SOURCE_DIR" -type f -name "*.$EXTENSION" -exec mv -v {} "$BACKUP_DIR" \;

echo "After moving:"
find "$BACKUP_DIR" -type f -name "*.$EXTENSION"

echo "All *.$EXTENSION files moved to $BACKUP_DIR"
