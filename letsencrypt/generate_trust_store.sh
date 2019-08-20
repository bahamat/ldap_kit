#!/bin/bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Copyright 2019 Joyent, Inc.

# Check https://letsencrypt.org/certificates/ for changes.
le_file_names=(
    isrgrootx1.pem
    lets-encrypt-x3-cross-signed.pem
    lets-encrypt-x4-cross-signed.pem
)

function list_trust_contents () {
    certutil -L -d .
}

function get_anchor () {
    local cert="$1"
    curl -#LO "https://letsencrypt.org/certs/$cert"
}

function add_cert () {
    local pem="$1"
    subj_cn=$(openssl x509 -noout -subject -in $pem | awk -F= '{print $NF}')
    certutil -A -d . -i $pem -n "$subj_cn" -t 'C,,'
}

for ca in "${le_file_names[@]}"; do
    get_anchor "$ca"
    add_cert "$ca"
done
list_trust_contents
