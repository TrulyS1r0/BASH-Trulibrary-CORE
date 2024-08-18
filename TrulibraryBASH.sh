#!/bin/bash

CALLEDBY=$1
export VERSION=V1.0

function start {
    echo "Trulibrary found, And starting. Please wait."
    if (whoami != root)
        then echo "Please run as administrator or ROOT, Or with WSL if you didnt."

        else run
}

function run {
    echo "Running Trulibrary with version BASH-"$VERSION
    echo "Running Trulibrary called by "$CALLEDBY
}