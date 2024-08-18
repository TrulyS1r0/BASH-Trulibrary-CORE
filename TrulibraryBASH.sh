#!/bin/bash
KEY=$3
TOKEN=$2
CALLEDBY=$1
VERSION="V1.0"
# Use the blacklist below if there's any script CALLEDBY's that are bad for your computer, That im not aware of. For example "virus"
# To add to blacklist, Type the code in the "" and if you need to add multiple, Add a space and another "" with the next blacklisted CALLEDBY.
BLACKLIST=(" ")
# DO NOT TOUCH VERIFIEDBLACKLIST
VERIFIEDBLACKLIST=("devtestscript")
if [[ $(echo ${BLACKLIST[@]} | fgrep -w $CALLEDBY) ]]
    then echo "Exiting with code 41. Go to the GitHub page for documentation."; exit 41
fi
if [[ $(echo ${VERIFIEDBLACKLIST[@]} | fgrep -w $CALLEDBY) ]]
    then echo "Exiting with code 42. Go to the GitHub page for documentation."; exit 42
fi
function start {
    echo "Trulibrary found, And starting. Please wait."
    if [[ "$(whoami)" != "root" ]];
        then echo "Please run as administrator or ROOT, Or with WSL if you didnt."; echo "TrulibraryBASH quit due to a fatal error (PERMISSIONS_NOT_MET)"

        else echo "You are classified as ROOT / Administrator."; run
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
function devtest1 {
    if [[ "$VERSION" == "V1.0DT" ]];
        then
        if [[ "$(whoami)" == "root" ]];
            then echo "CALLEDBY = "$CALLEDBY; echo "TOKEN = "$TOKEN; echo "KEY = "$KEY
        
            else echo "You dont have enough permissions (Admin, Root). Please stop trying to use the devtest to figure out our security measures, Since we will be releasing third party developing with TrulibraryBASH soon. Dont worry, Fellow developer/tinkerer. Lotsa Love, TrulyS1r0"
      
        fi
    else echo "You arent a developer/tester. Please stop trying to use the devtest to figure out our security measures, Since we will be releasing third party developing with TrulibraryBASH soon. Dont worry, Fellow developer/tinkerer. Lotsa Love, TrulyS1r0"
    fi
}