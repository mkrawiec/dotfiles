#!/usr/bin/env bash

find ~/.ssh/ \
    -type f ! -name "*.pub" \
    -name "id_rsa*" \
    -exec ssh-add '{}' \; > /dev/null
