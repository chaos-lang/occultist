#!/bin/bash

if [[ "$OSTYPE" == "linux"* ]]; then
    APT_CMD=$(which apt)
    APT_GET_CMD=$(which apt-get)
    YUM_CMD=$(which yum)
    DNF_CMD=$(which dnf)
    PACMAN_CMD=$(which pacman)
    PKG_CMD=$(which pkg)
    APK_CMD=$(which apk)

    if [[ ! -z $APT_CMD ]]; then
        apt update && \
        apt install -y jq
    elif [[ ! -z $APT_GET_CMD ]]; then
        apt-get update && \
        apt-get install -y jq
    elif [[ ! -z $YUM_CMD ]]; then
        yum install -y jq
    elif [[ ! -z $DNF_CMD ]]; then
        dnf install -y jq
    elif [[ ! -z $PACMAN_CMD ]]; then
        pacman -Syu --noconfirm && \
        pacman -S --noconfirm jq
    elif [[ ! -z $APK_CMD ]]; then
        apk update && \
        apk add jq
    else
        echo "Error: Automatic detection of default package manager is failed!"
        exit 1;
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew update
    brew install jq
fi
