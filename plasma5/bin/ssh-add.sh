#!/usr/bin/env bash

find ~/.ssh/ \
    -type f ! -name "*.pub" \
    -name "id_*" \
    -exec ssh-add '{}' \; > /dev/null
