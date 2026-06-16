#!/usr/bin/env bash
# Re-render all Mermaid sources (.mmd) in this folder to PNG in ../diagrams/.
# Needs Node + npx (first run downloads a headless browser).
set -e
cd "$(dirname "$0")"
echo '{"args":["--no-sandbox","--disable-setuid-sandbox"]}' > pptr.json
mkdir -p ../diagrams
for f in loop deploy roles visa; do
  [ -f "$f.mmd" ] || continue
  npx -y @mermaid-js/mermaid-cli@latest -i "$f.mmd" -o "../diagrams/$f.png" -b transparent -s 2 -p pptr.json
  echo "rendered $f.png"
done
