#!/bin/sh
cd out
rm -f warppad-patched.zip

# Extract zip to new "working" directory
7z x -tzip -o"working" warppad.zip

# Copy in entity types tag
cp ../datapack/data/warppad/tags/entity_types/nonwarpable.json working/data/warppad/tags/entity_types/nonwarpable.json

# Rename directories for 1.21
mv working/data/minecraft/tags working/data/minecraft/tag
mv working/data/minecraft/tag/blocks working/data/minecraft/tag/block
mv working/data/minecraft/tag/functions working/data/minecraft/tag/function

mv working/data/warppad/advancements working/data/warppad/advancement
mv working/data/warppad/functions working/data/warppad/function
mv working/data/warppad/predicates working/data/warppad/predicate
mv working/data/warppad/recipes working/data/warppad/recipe
mv working/data/warppad/tags working/data/warppad/tag
mv working/data/warppad/tag/blocks working/data/warppad/tag/block
mv working/data/warppad/tag/entity_types working/data/warppad/tag/entity_type
mv working/data/warppad/tag/items working/data/warppad/tag/item

# Enter directory and archive it all
cd working
7z a -tzip ../warppad-patched.zip *

# Cleanup
cd ..
rm -r working
