#!/usr/bin/env bash

if [[ ! -d "${PREFIX}/opt" ]]; then
    command mkdir -p "${PREFIX}/opt"
fi

if [[ -d "${PREFIX}/opt/darksay" ]]; then
    command rm -rf "${PREFIX}/opt/darksay"
fi

if [[ -x "${PREFIX}/bin/darksay" ]]; then
    command rm -f "${PREFIX}/bin/darksay"
fi

command git clone --depth 1 \
    'https://github.com/Blziko/darksay' \
    "${PREFIX}/opt/darksay"

command chmod +x -R "${PREFIX}/opt/darksay"
command ln -sf \
    "${PREFIX}/opt/darksay/darksay.rb" \
    "${PREFIX}/bin/darksay"