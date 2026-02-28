#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p data

curl -sS -X POST -H "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" \
  --data-urlencode "data@data/query_rivers_wide.overpass" \
  "https://overpass-api.de/api/interpreter" \
| python3 -c 'import json,sys; json.dump(json.load(sys.stdin),sys.stdout,separators=(",",":"))' \
> data/rivers_wide_overpass.json

echo "OK: wrote data/rivers_wide_overpass.json"
ls -lh data/rivers_wide_overpass.json
