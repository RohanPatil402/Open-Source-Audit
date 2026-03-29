#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGES=("git" "gcc" "httpd" "mysql" "vlc" "firefox")

for PACKAGE in "${PACKAGES[@]}"; do
    echo "---------------------------"

    if dpkg -l | grep -qw $PACKAGE; then
        echo "$PACKAGE is installed."
    else
        echo "$PACKAGE is NOT installed."
    fi

    case $PACKAGE in 
        git) echo "Git: version control system" ;;
        gcc) echo "GCC: C compiler" ;;
        httpd) echo "Apache: web server" ;;
        mysql) echo "MySQL: database system" ;;
        vlc) echo "VLC: media player" ;;
        firefox) echo "Firefox: web browser" ;;
    esac
done
