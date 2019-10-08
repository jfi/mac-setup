#!/usr/bin/env bash

if [ $(which wget) ]; then
    echo "wget already installed!"
    exit -1
fi

brew install wget