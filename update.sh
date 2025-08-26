#!/bin/bash

owd="$(pwd)"
restore_dir() {
  cd "$owd" || exit
}
trap restore_dir EXIT

cd "$(dirname "$0")" || exit

FROM_HOME=( ".config/pipewire/pipewire.conf.d/10-sample-rate.conf" )
for file in "${FROM_HOME[@]}"; do
    file_path="$(dirname "$file")"
    mkdir -p "$file_path"
    cp -r ~/"$file" "$file"
done
