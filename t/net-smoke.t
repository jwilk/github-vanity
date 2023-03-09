#!/bin/sh

# Copyright © 2022 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

set -e -u

if [ -z "${GITHUB_VANITY_NETWORK_TESTING-}" ]
then
    echo '1..0 # SKIP set GITHUB_VANITY_NETWORK_TESTING=1 to enable tests that exercise network'
    exit 0
fi

pdir="${0%/*}/.."
prog="$pdir/github-vanity"

echo 1..1
: "${PYTHONWARNINGS=d}"
out=$("$prog" bedevere-bot)
sed -e 's/^/# /' <<EOF
$out
EOF
echo 'ok 1'

# vim:ts=4 sts=4 sw=4 et ft=sh
