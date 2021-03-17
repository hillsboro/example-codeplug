#!/usr/bin/env bash

# This generates the same codeplug as generate.py
# using bash scripting. Linux or macOS only.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OUTPUT=${OUTPUT:-$DIR/../../OUTPUT}
python -m dzcb \
    --pnwdigital \
    --default-k7abd \
    --k7abd $DIR/k7abd \
    --repeaterbook-proximity-csv "$DIR/prox.csv" \
    --repeaterbook-state washington oregon \
    --repeaterbook-name-format '{Landmark} {Frequency}' \
    --scanlists-json "$DIR/scanlists.json" \
    --exclude "$DIR/exclude.csv" \
    --order "$DIR/order.csv" \
    --replacements "$DIR/replacements.csv" \
    --anytone 878_1_21\
    --dmrconfig "$DIR/example-d878uv.conf" \
-- "$OUTPUT/$(basename "$DIR")"
