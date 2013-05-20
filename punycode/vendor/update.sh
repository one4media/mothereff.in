#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")"

curl -# "https://raw.github.com/bestiejs/punycode.js/master/punycode.js" > "punycode.js"

cat "punycode.js" "../eff.js" > "/tmp/punycode.js"
echo "Copying concatenated JS to pasteboard..."
cat "/tmp/punycode.js" | pbcopy
