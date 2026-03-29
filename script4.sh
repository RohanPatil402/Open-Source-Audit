#!/bin/bash
# Script 4: Log File Analyzer 

LOGFILE=$1
KEYWORD=${2:-error}
COUNT=0

# check if file exists
if [ ! -f "$LOGFILE" ]; then
     echo "Error: File $LOGFILE not found."
     exit 1
fi

# check if file is empty 
if [ ! -s "$LOGFILE" ]; then
     echo "File is empty."
     exit 1
fi

#Read file line by line
while IFS= read -r LINE
do
   if echo "$LINE" | grep -iq "$KEYWORD"; then
       COUNT=$((COUNT+1))
   fi
done < "$LOGFILE"

echo "-------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
