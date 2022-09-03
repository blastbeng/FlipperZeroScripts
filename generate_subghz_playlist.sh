#!/bin/sh
DIR="/f/subghz"



execute() { 
    dirname="$(dirname "$1")"
    name="$(realpath "$dirname")/$(basename "$1")"; 
    name="sub: /ext${name:2}"; 
    dir="/f/subghz/playlist/$(basename "$(dirname "$dirname")")$(basename "$dirname").txt"; 
    dir="${dir//-}"; 
    dir="${dir//_}"; 
    echo "$name >> $dir"; 
    echo "$name" >> "$dir"; 
}

export -f execute

find $DIR -type f -name "*.sub" -exec bash -c 'execute "{}"' \;
#find $DIR -type f -name "*.sub" -exec sh -c 'name="$(realpath "$(dirname "{}")")/$(basename "{}")"; name="sub: /ext${name:2}"; dir="/f/subghz/playlist/$(basename "$(dirname "$(dirname "{}")")")$(basename "$(dirname "{}")").txt"; dir="${dir//-}"; dir="${dir//_}"; echo "$name"; echo "$name" >> "$dir";' \;
#find $DIR -type f -name "*.sub"