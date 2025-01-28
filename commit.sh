#!/bin/bash

# Verifica si se ha proporcionado un argumento
if [ $# -gt 0 ]; then
  commit_message="$1"
else
  commit_message="commit sin nombre"
fi

# Ejecuta los comandos de Git
git add .
git commit -m "$commit_message"
git push
