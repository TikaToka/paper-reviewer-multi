#!/bin/sh

dirs=$(ls -d 2410.*)


for arxiv_id in $dirs; do
  rm -rf articles/$arxiv_id

  if [ -d "$arxiv_id" ]; then
    python convert.py --arxiv-id $arxiv_id --template templates/article_tmpl.md
  fi
done