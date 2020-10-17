#!/bin/bash -x

rm -rf /repo/docs || true 
mkdir -p /repo/docs/
find /repo/src -name "*.md" | sed 's@^/repo/src/@@g' | sed 's@.md$@@g' \
| while read f
do
  pandoc --template=template.html5 /repo/src/$f.md -o /repo/docs/$f.html
done
