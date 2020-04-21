#!/bin/bash

if [[ "$OSTYPE" == "linux"* ]]; then
    APT_CMD=$(which apt)
    APT_GET_CMD=$(which apt-get)
    YUM_CMD=$(which yum)
    DNF_CMD=$(which dnf)
    PACMAN_CMD=$(which pacman)
    PKG_CMD=$(which pkg)
    APK_CMD=$(which apk)

    REQUIREMENTS='git jq curl'

    if [[ ! -z $APT_CMD ]]; then
        apt update && \
        apt install -y $REQUIREMENTS
    elif [[ ! -z $APT_GET_CMD ]]; then
        apt-get update && \
        apt-get install -y $REQUIREMENTS
    elif [[ ! -z $YUM_CMD ]]; then
        yum install -y $REQUIREMENTS
    elif [[ ! -z $DNF_CMD ]]; then
        dnf install -y $REQUIREMENTS
    elif [[ ! -z $PACMAN_CMD ]]; then
        pacman -Syu --noconfirm && \
        pacman -S --noconfirm $REQUIREMENTS
    elif [[ ! -z $APK_CMD ]]; then
        apk update && \
        apk add $REQUIREMENTS
    else
        echo "Error: Automatic detection of default package manager is failed!"
        exit 1;
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew update
    brew install jq md5sha1sum
fi
