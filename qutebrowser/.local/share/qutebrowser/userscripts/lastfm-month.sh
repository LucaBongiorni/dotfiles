#!/usr/bin/env bash
last_month=$(date +%Y-%m-01)
today=$(date +%Y-%m-%d)
echo "open https://last.fm/fr/user/diyod/library/albums?from=$last_month&to=$today&format=grid" >> "$QUTE_FIFO"
