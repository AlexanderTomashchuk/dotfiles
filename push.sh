#! /bin/sh

# Copying dotfileso to this folder
./build.sh

FIRST_ARGUMENT="$1"
git add *;
git commit -m "$FIRST_ARGUMENT";

echo "Publishing changes to GitHub..."
git push;
echo "Done"

