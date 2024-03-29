#!/bin/sh
cp out/warppad.zip out/warppad-patched.zip
cd datapack && 7z a -tzip ../out/warppad-patched.zip data/warppad/tags/entity_types/nonwarpable.json
