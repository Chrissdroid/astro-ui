#!/user/bin/env bash

curl -O https://files.stork-search.net/releases/v1.4.0/stork-amazon-linux
chmod +x stork-amazon-linux
astro build --verbose
echo "starting stork build"
echo "$(<public/res/stork/stork.toml)"
echo "added xelement.st file"
./stork-amazon-linux build --input public/res/stork/stork.toml --output - > dist/res/stork/xelement.st
echo "stork build finished"