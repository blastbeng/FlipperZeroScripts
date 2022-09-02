#!/bin/sh

DIR="/f/subghz"

find $DIR -type f -name "*.sub" -exec sh -c 'name="$(realpath "$(dirname "{}")")/$(basename "{}")"; name="sub: /ext${name:2}"; dir="/f/subghz/playlist/$(basename "$(dirname "$(dirname "{}")")")$(basename "$(dirname "{}")").txt"; dir="${dir//-}"; dir="${dir//_}"; echo "$name"; echo "$name" >> "$dir";' \;