#!/usr/bin/env bash

set -oue pipefail

echo 'Installing Liquidprompt...'

git clone https://github.com/liquidprompt/liquidprompt.git /etc/liquidprompt

echo 'Generating shell profile entry...'

cat << 'EOF' >> /etc/profile.d/liquidprompt.sh
# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source /etc/liquidprompt/liquidprompt
EOF
