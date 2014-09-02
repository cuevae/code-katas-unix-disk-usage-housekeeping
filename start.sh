#!/bin/bash

FBIG=$(find -name fbig.sh)
status=$?

if test $status -eq 0
then

    $(chmod u+x $FBIG)
    status=$?

    if test $status -eq 0
    then
        echo Good to go!
    else
        echo "We cannot give execution permissions to $FBIG"
    fi

else

    FBIG=$(touch fbig.sh)
    status=$?

    if test $status -eq 0
    then

        $(chmod u+x $FBIG)
        status=$?

        if test $status -eq 0
        then
            echo Good to go!
        else
            echo "We cannot give execution permissions to $FBIG"
        fi

    else
        echo $FBIG file not found, we tried to create one for you but seems we cant. Please ensure this file exists.
    fi

fi