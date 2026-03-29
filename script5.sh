#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one things you would build and share freely: " BUILD

DATE=$(date)
USER=$(whoami)

OUTPUT="manifesto_${USER}.txt"
echo "------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "------------------------------" >> $OUTPUT
echo "User: $USER" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo >> $OUTPUT

echo "I believe in open source because it represents $FREEDOM." >> $OUTPUT
echo "Every day, I use tools like $TOOL which empower innovation." >> $OUTPUT 
echo "In the future, I aim to build $BUILD and share it freely with the world." >> $OUTPUT

echo
echo "Manifesto saved to $OUTPUT"

cat $OUTPUT
