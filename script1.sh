#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Rohan"
SOFTWARE_CHOICE="Linux"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

echo "=============================="
echo "System Identity Report"
echo "=============================="
echo "User        : $USER_NAME"
echo "Home Dir    : $HOME"
echo "Kernel      : $KERNL"
echo "Distro      : $DISTRO"
echo "Uptime      : $UPTIME"
echo "Date & Time : $DATE"
echo "Message     : $SOFTWARE_CHOICE is open-source software."
