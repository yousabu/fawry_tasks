#!/bin/bash

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
CHECKED_BRANCH="main"

if [ "$CURRENT_BRANCH" != $CHECKED_BRANCH ]
then
    echo Not on $CHECKED_BRANCH. Please Checkout !
    echo
    exit 0
fi

# git fetch to download objects and refs from our remote rebo
git fetch

HEADID=$(git rev-parse HEAD)
UPSTREAMID=$(git rev-parse ${CHECKED_BRANCH}@{upstream})

if [ "$HEADID" != "$UPSTREAMID" ]
then
    echo "Your Main Not Updated (git pull)!"
    echo
    exit 0
else
    echo Current branch is up to date with remote
fi

