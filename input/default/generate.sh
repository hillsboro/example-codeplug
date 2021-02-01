#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OUTPUT=${OUTPUT:-$DIR/../../OUTPUT}
python -m dzcb \
    --pnwdigital \
    --default-k7abd \
    --k7abd $DIR/k7abd \
    --farnsworth-template-json "$DIR/example-md-uv380.json" \
    --order-json "$DIR/order.json" \
$OUTPUT/$(basename "$DIR")
