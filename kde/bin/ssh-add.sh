#!/usr/bin/env bash

export SSH_ASKPASS=$(which ksshaskpass)

find ~/.ssh/ \
    -type f ! -name "*.*" \
    -name "id_rsa*" \
    -exec ssh-add '{}' \; > /dev/null
