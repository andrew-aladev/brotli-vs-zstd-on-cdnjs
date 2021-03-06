#!/usr/bin/env bash
set -e

DIR=$(dirname "${BASH_SOURCE[0]}")
cd "$DIR"

cd "../.."

rm -r "chart/cdnjs" || :

"./lib/chart/main.rb" \
  "cdnjs" \
  "svg:any" \
  "css:min,not_min,any" \
  "js:min,not_min,any"
