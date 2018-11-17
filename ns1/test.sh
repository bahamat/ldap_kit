#!/bin/bash

cmd="$1"
val="$2"

enc_val=$(./$cmd $val)
dec_val=$(./$cmd $enc_val)

if [[ $val == $dec_val ]]; then
    echo "OK"
else
    echo "FAIL"
fi
