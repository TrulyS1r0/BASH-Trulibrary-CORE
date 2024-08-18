#!/bin/bash
KEY=$3
TOKEN=$2
CALLEDBY=$1
export VERSION=V1.0

function start {
    echo "Trulibrary found, And starting. Please wait."
    if [[ "$(whoami)" != "root" ]];
        then echo "Please run as administrator or ROOT, Or with WSL if you didnt."; echo "TrulibraryBASH quit due to a fatal error (PERMISSIONS_NOT_MET)"

        else echo "You are ROOT. Continuing."; run
    fi
}

function run {
    if [[ "$CALLEDBY" != "" ]];
        then
        echo "Running Trulibrary with version BASH-"$VERSION
        echo "Running Trulibrary called by "$CALLEDBY
        if [[ "$CALLEDBY" == "testscript" ]];
           then echo "Test succeeded."
            if [[ "$VERSION" == "V1.0" ]];
                then echo "Thank you for testing the already-thoroughly-tested V1.0 of TrulibraryBASH. Thanks for using my software, Or even downloading it. Text me on discord TrulyS1r0 or email me on TSM4245@protonmail.com that you found this, if you want to talk with me. Im pretty lonely at the time of writing. Goodbye!"
            fi
        fi
        else echo "You cannot run TrulibraryBASH.sh by itself. It should be called by another program that gives sufficient information, And is written using TrulibraryBASH Variables that are needed to verify the program."
    fi
}
start