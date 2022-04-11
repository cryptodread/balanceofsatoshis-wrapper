#!/bin/bash

DURATION=$(</dev/stdin)
if (($DURATION <= 5000)); then
    exit 60
else
    if ! curl --silent --fail balanceofsatoshis.embassy &>/dev/null; then
        echo "BoS API is unreachable" >&2
        exit 1
    fi
fi