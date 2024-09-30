#!/bin/bash

# Hacer commits vacíos del 1 de septiembre al 30 de septiembre de 2024
for d in {01..30}
do
  export GIT_COMMITTER_DATE="2024-09-$d 12:00:00"
  git commit --allow-empty -m "Commit del día 2024-09-$d" --date="2024-09-$d 12:00:00"
done

# Push al repositorio remoto
git push origin main

