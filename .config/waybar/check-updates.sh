#!/bin/bash
# Use checkupdates (safest way to check without syncing)
count=$(checkupdates | wc -l)

if [ "$count" -lt 15 ]; then
    echo "{\"text\": \"󰇚 $count\", \"class\": \"low\"}"
elif [ "$count" -lt 50 ]; then
    echo "{\"text\": \"󰇚 $count\", \"class\": \"medium\"}"
else
    echo "{\"text\": \"󰇚 $count\", \"class\": \"high\"}"
fi
