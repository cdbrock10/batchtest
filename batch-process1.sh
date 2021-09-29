#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    echo "Processing $f"
    echo "File size: $SIZE" 
    WC="$(wc -w ${f} | cut -d ' ' -f1)"
    echo "Word Count: $WC"
  fi
done

